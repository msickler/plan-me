module SessionsHelper

  def logged_in?
    !!current_goer || !!current_planner
  end

  def current_goer
    @current_goer ||= Goer.find_by(id: session[:goer_id])
  end

  def current_planner
    @current_planner ||= Planner.find_by(id: session[:planner_id])
  end

end
