module SessionsHelper

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_goer
    @current_goer ||= Goer.find_by(id: session[:goer_id])
  end

  def current_planner
    @current_planner ||= Planner.find_by(id: session[:planner_id])
  end

end
