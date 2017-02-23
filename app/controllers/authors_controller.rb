class AuthorsController < ApplicationController

  # Set up CanCan automatic authorization on all methods. See models/ability.rb.
  load_and_authorize_resource

  #----------------------------------------------------------------------------
  def index
    @authors = Author.all
  end

  #----------------------------------------------------------------------------
  def show
    @author = Author.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def new
    # We build a blank author here so that @author in the view won't be nil.
    @author = Author.new
  end

  #----------------------------------------------------------------------------
  def edit
    @author = Author.find(params[:id])
  end

  #----------------------------------------------------------------------------
  def create
    # Build a new Author object from the given parameters.
    @author = Author.new(author_params)
    # Try to save it to the DB. If successful, redirect to show, otherwise
    # re-render the new page.
    if @author.save
      redirect_to @author
    else
      # Use "render" so we will reuse the same @author field, thus repopulating
      # the form.
      render 'new'
    end

    # Dump the parameters
    # render plain: params[:author].inspect
  end

  #----------------------------------------------------------------------------
  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to @author
    else
      render 'edit'
    end
  end

  #----------------------------------------------------------------------------
  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to authors_path
  end

  #----------------------------------------------------------------------------
  private
    def author_params
      params.require(:author).permit(:name)
    end

end
