class MediaController < ApplicationController

  #----------------------------------------------------------------------------
  def index
    @media = Medium.all
  end

  #----------------------------------------------------------------------------
  def show
    @medium = Medium.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def new
    # We build a blank media here so that @medium in the view won't be nil.
    @medium = Medium.new
  end

  #----------------------------------------------------------------------------
  def edit
    @medium = Medium.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def create
    # Build a new Medium object from the given parameters.
    @medium = Medium.new(media_params)
    # Try to save it to the DB. If successful, redirect to show, otherwise
    # re-render the new page.
    if @medium.save
      redirect_to @medium
    else
      # Use "render" so we will reuse the same @medium field, thus repopulating
      # the form.
      render 'new'
    end

    # Dump the parameters
    # render plain: params[:media].inspect
  end

  #----------------------------------------------------------------------------
  def update
    @medium = Medium.find(params[:id])

    if @medium.update(media_params)
      redirect_to @medium
    else
      render 'edit'
    end
  end

  #----------------------------------------------------------------------------
  def destroy
    @medium = Medium.find(params[:id])
    @medium.destroy

    redirect_to media_path
  end

  #----------------------------------------------------------------------------
  private
    def media_params
      params.require(:medium).permit(:name)
    end
end
