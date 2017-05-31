class SubmissionsController < ApplicationController
  load_and_authorize_resource

  # Export these to the application helper.
  helper_method :sort_column, :sort_direction

  #----------------------------------------------------------------------------
  def index
    # Join with translator for sorting by translator name.
    @submissions = Submission.joins(:translator)

    # Possibly limit to those submissions that are approved or not.
    if cannot? :update, Submission
      # Anonymous users only see approved things.
      @submissions = @submissions.where('approved = 1')
    else
      # Otherwise, URL allows a choice.
      if params[:approved] == '1'
        @submissions = @submissions.where('approved = 1')
      elsif params[:approved] == '0'
        @submissions = @submissions.where('approved = 0')
      end
    end

    # Possibly limit to those submissions that need approval.
    if params[:completed] == '1'
      @submissions = @submissions.where('completed = 1')
    elsif params[:completed] == '0'
      @submissions = @submissions.where('completed = 0')
    end

    # Possibly limit to those assigned to the current user.
    if params[:assigned]
      @submissions = @submissions.where('entry_id = %d' % current_user.id)
    end

    # Search, order, and paginate.
    @submissions = @submissions.
      search( params[:title], params[:translator],
        params[:author], params[:work],
        params[:start_date], params[:end_date]
      ).
      order(sort_column + " " + sort_direction).
      paginate(:per_page => 20, :page => params[:page])

    # Display error if we have no submissions.
    if @submissions.blank?
      flash[:error] = "There are no submissions matching that criteria."
    end
  end

  #----------------------------------------------------------------------------
  def show
    @submission = Submission.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def new
    # We build a blank submission here so that @submission in the view won't be nil.
    @submission = Submission.new
  end

  #----------------------------------------------------------------------------
  def edit
    @submission = Submission.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def create
    # Build a new Submission object from the given parameters.
    @submission = Submission.new(submission_params)

    # New submissions default to unapproved.
    @submission.approved = 0
    @submission.completed = 0

    # Try to save it to the DB. If successful, redirect to show, otherwise
    # re-render the new page.
    if @submission.save
      redirect_to @submission
    else
      # Use "render" so we will reuse the same @submission field, thus repopulating
      # the form.
      render 'new'
      #render plain: params[:submission].inspect
    end

  end

  #----------------------------------------------------------------------------
  def update
    @submission = Submission.find(params[:id])

    # If the updated entry is being approved, capture the current user doing
    # the approving.
    if params[:submission][:approved] == "1"
      @submission.editor_id = current_user.id
    end

    if @submission.update(submission_params)
      redirect_to @submission
    else
      render 'edit'
    end
  end

  #----------------------------------------------------------------------------
  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    redirect_to submissions_path
  end

  #----------------------------------------------------------------------------
  private
    def submission_params
      params.require(:submission).permit(
        :title, :work_id, :author_id,
        :language_id, :medium_id,
        :translator_id, :isbn, :oclc, :edition,
        :is_prose, :is_poetry, :medium_id,
        :publication_year, :notes, :approved, :entry_id, :completed)
    end

    def sort_column
      # See if the sort column is one of the known column names, otherwise
      # default to title.
      %w[title publication_year translators.name completed].include?(params[:sort]) ? params[:sort] : "title"
    end

    def sort_direction
      # See if the current direction param is in the array (either asc or
      # desc), if not, default to "asc".
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end
