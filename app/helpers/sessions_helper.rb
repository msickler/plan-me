module SessionsHelper

  # Logs in the given user.
  def log_in(goer)
    session[:goer_id] = goer.id
  end

  def current_goer
    @current_goer ||= Goer.find_by(id: session[:goer_id])
  end

  def current_planner
    @current_planner ||= Planner.find_by(id: session[:planner_id])
  end

end
