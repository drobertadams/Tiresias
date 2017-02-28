class UsersController < ApplicationController

  # Automatically add CanCanCan authorization to all actions.

  load_and_authorize_resource

  # Displays all users.
  def index
    @users = User.all
  end

  # Displays details of a single user.
  def show
    @user = User.find(params[:id])
  end

  # Creates an empty user object.
  def new
      @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  # Creates and saves a new user from the given parameters.
  def create
    @user = User.new(user_params)

    # Ensure only admins can create admin accounts. CanCanCan currently doesn't
    # do this cleanly, so we're doing it here manually.
    if current_user.role?(:editor)
      if @user.role?(:admin) or @user.role?(:editor)
        raise CanCan::AccessDenied.new("Permission denied", :create, User)
        return
      end
    end

    if @user.save_without_session_maintenance
      flash[:notice] = "Registration successful."
      redirect_to users_path
    else
      render :action => 'new'
    end
  end

  # Looks up the current user (using helper function)
  def edit
    @user = User.find(params[:id])
  end

  # Updates the current user.
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = "Successfully updated profile."
      redirect_to users_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  #----------------------------------------------------------------------------
  private
    def user_params
      params.require(:user).permit(
        :email, :password, :password_confirmation, :role
      )
    end

end
