class CollectionsController < ApplicationController

  # Set up CanCan automatic authorization on all methods. See models/ability.rb.
  load_and_authorize_resource
  
    #----------------------------------------------------------------------------
    def index
      @collections = Collection.all
    end

    #----------------------------------------------------------------------------
    def show
      @collection = Collection.find(params[:id])
    end

    #----------------------------------------------------------------------------
    def new
      # We build a blank collection here so that @collection in the view won't be nil.
      @collection = Collection.new
    end

    #----------------------------------------------------------------------------
    def edit
      @collection = Collection.find(params[:id])
    end

    #----------------------------------------------------------------------------
    def create
      # Build a new Collection object from the given parameters.
      @collection = Collection.new(collection_params)
      # Try to save it to the DB. If successful, redirect to show, otherwise
      # re-render the new page.
      if @collection.save
        redirect_to @collection
      else
        # Use "render" so we will reuse the same @collection field, thus repopulating
        # the form.
        render 'new'
      end

      # Dump the parameters
      # render plain: params[:collection].inspect
    end

    #----------------------------------------------------------------------------
    def update
      @collection = Collection.find(params[:id])

      if @collection.update(collection_params)
        redirect_to @collection
      else
        render 'edit'
      end
    end

    #----------------------------------------------------------------------------
    def destroy
      @collection = Collection.find(params[:id])
      @collection.destroy

      redirect_to collections_path
    end

    #----------------------------------------------------------------------------
    private
      def collection_params
        params.require(:collection).permit(:name)
      end
end
