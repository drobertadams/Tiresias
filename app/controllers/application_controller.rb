class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Register current_user as a global helper method.
  helper_method :current_user

  private
    # Returns the current user session object.
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    # Returns the current user object.
    def current_user
      @current_user = current_user_session && current_user_session.record
    end

end
