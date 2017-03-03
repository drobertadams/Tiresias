class SubmissionsController < ApplicationController
  load_and_authorize_resource

  # Export these to the application helper.
  helper_method :sort_column, :sort_direction

  #----------------------------------------------------------------------------
  def index
    # Join with translator for sorting by translator name.
    @submissions = Submission.joins(:translator)

    # If the user is anonymous, only show them approved entries.
    @approved = params[:approved] == "0" ? 0 : 1 # make sure we get numeric parameter
    @approved = (cannot? :approve, Submission) ? 1 : @approved

    # Grab the submissions.
    @submissions = @submissions.where('approved = %d' % @approved)

    # Search, order, and paginate.
    @submissions = @submissions.search(params[:search]).
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
        :publication_year, :notes, :approved, :entry_id)
    end

    def sort_column
      # See if the sort column is one of the known column names, otherwise
      # default to title.
      %w[title publication_year translators.name].include?(params[:sort]) ? params[:sort] : "title"
    end

    def sort_direction
      # See if the current direction param is in the array (either asc or
      # desc), if not, default to "asc".
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end
