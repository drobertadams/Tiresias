class TranslatorsController < ApplicationController

  # Set up CanCan automatic authorization on all methods. See models/ability.rb.
  load_and_authorize_resource
  
  #----------------------------------------------------------------------------
  def index
    @translators = Translator.all
  end

  #----------------------------------------------------------------------------
  def show
    @translator = Translator.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def new
    # We build a blank translator here so that @translator in the view won't be nil.
    @translator = Translator.new
  end

  #----------------------------------------------------------------------------
  def edit
    @translator = Translator.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def create
    # Build a new Translator object from the given parameters.
    @translator = Translator.new(translator_params)
    # Try to save it to the DB. If successful, redirect to show, otherwise
    # re-render the new page.
    if @translator.save
      redirect_to @translator
    else
      # Use "render" so we will reuse the same @translator field, thus repopulating
      # the form.
      render 'new'
    end

    # Dump the parameters
    # render plain: params[:translator].inspect
  end

  #----------------------------------------------------------------------------
  def update
    @translator = Translator.find(params[:id])

    if @translator.update(translator_params)
      redirect_to @translator
    else
      render 'edit'
    end
  end

  #----------------------------------------------------------------------------
  def destroy
    @translator = Translator.find(params[:id])
    @translator.destroy

    redirect_to translators_path
  end

  #----------------------------------------------------------------------------
  private
    def translator_params
      params.require(:translator).permit(:name)
    end

end
