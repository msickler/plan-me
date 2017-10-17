class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def logged_in?
    !!current_user
  end

  private

  def current_user
    session[:user_id] = user.id
  end

end
