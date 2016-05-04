class ApplicationController < ActionController::Base
  #before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    user_id = request.headers['X-Platform-Identify']
    if user_id.nil?
      return 1
    else
      return user_id
    end
  end
end
