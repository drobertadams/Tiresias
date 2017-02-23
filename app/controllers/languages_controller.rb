class LanguagesController < ApplicationController

  # Set up CanCan automatic authorization on all methods. See models/ability.rb.
  load_and_authorize_resource
  
  #----------------------------------------------------------------------------
  def index
    @languages = Language.all
  end

  #----------------------------------------------------------------------------
  def show
    @language = Language.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def new
    # We build a blank language here so that @language in the view won't be nil.
    @language = Language.new
  end

  #----------------------------------------------------------------------------
  def edit
    @language = Language.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def create
    # Build a new Language object from the given parameters.
    @language = Language.new(language_params)
    # Try to save it to the DB. If successful, redirect to show, otherwise
    # re-render the new page.
    if @language.save
      redirect_to @language
    else
      # Use "render" so we will reuse the same @language field, thus repopulating
      # the form.
      render 'new'
    end

    # Dump the parameters
    # render plain: params[:language].inspect
  end

  #----------------------------------------------------------------------------
  def update
    @language = Language.find(params[:id])

    if @language.update(language_params)
      redirect_to @language
    else
      render 'edit'
    end
  end

  #----------------------------------------------------------------------------
  def destroy
    @language = Language.find(params[:id])
    @language.destroy

    redirect_to languages_path
  end

  #----------------------------------------------------------------------------
  private
    def language_params
      params.require(:language).permit(:name)
    end

end
