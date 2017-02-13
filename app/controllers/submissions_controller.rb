class SubmissionsController < ApplicationController

    #----------------------------------------------------------------------------
    def index
      #@submissions = Submission.all
      if params[:search]
        @submissions = Submission.search(params[:search]).order("created_at DESC")
      else
        @submissions = Submission.all # .order("created_at DESC")
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
          :publication_year, :notes)
      end

end
