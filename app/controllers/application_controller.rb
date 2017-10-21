class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  helper_method :logged_in?

  def logged_in?
    !!current_goer || !!current_planner
  end



end
