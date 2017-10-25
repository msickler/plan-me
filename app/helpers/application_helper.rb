module ApplicationHelper

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def must_log_in
    if !logged_in?
      redirect_to '/'
    end
  end

end
