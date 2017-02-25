class UsersController < ApplicationController

  # Automatically add CanCanCan authorization to all actions.

  authorize_resource

  # Creates an empty user object.
  def new
      @user = User.new
  end

  # Creates and saves a new user from the given parameters.
  def create
    @user = User.new(user_params)
    if @user.save_without_session_maintenance
    #if @user.save
      flash[:notice] = "Registration successful."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  # Looks up the current user (using helper function)
  def edit
    @user = current_user
  end

  # Updates the current user.
  def update
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:notice] = "Successfully updated profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end

  #----------------------------------------------------------------------------
  private
    def user_params
      params.require(:user).permit(
        :email, :password, :password_confirmation, :role
      )
    end

end
