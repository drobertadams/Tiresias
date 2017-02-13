class WorksController < ApplicationController

  #----------------------------------------------------------------------------
  def index
    @works = Work.all
  end

  #----------------------------------------------------------------------------
  def show
    @work = Work.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def new
    # We build a blank work here so that @work in the view won't be nil.
    @work = Work.new
  end

  #----------------------------------------------------------------------------
  def edit
    @work = Work.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def create
    # Build a new Work object from the given parameters.
    @work = Work.new(work_params)
    # Try to save it to the DB. If successful, redirect to show, otherwise
    # re-render the new page.
    if @work.save
      redirect_to @work
    else
      # Use "render" so we will reuse the same @work field, thus repopulating
      # the form.
      render 'new'
    end

    # Dump the parameters
    # render plain: params[:work].inspect
  end

  #----------------------------------------------------------------------------
  def update
    @work = Work.find(params[:id])

    if @work.update(work_params)
      redirect_to @work
    else
      render 'edit'
    end
  end

  #----------------------------------------------------------------------------
  def destroy
    @work = Work.find(params[:id])
    @work.destroy

    redirect_to works_path
  end

  #----------------------------------------------------------------------------
  private
    def work_params
      params.require(:work).permit(:title)
    end

end
