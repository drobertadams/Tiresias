class UserSessionsController < ApplicationController

  # Creates an empty user session.
  def new
    @user_session = UserSession.new
  end

  # Actually logs the user in by creating a user session from the given
  # parameters.
  def create
    @user_session = UserSession.new(user_session_params)
    if @user_session.save
      flash[:notice] = "Successfully logged in."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  # Logs out by destroying the current user session.
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end

  private
      def user_session_params
        params.require(:user_session).permit(:email, :password)
      end

end
