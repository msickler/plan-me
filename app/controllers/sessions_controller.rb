class SessionsController < ApplicationController

  def new
  end

  def create
    if auth_hash = request.env['omniauth.auth']
      @user = User.find_or_create_by_omniauth(auth_hash)
      session[:user_id] = @user.id
      redirect_to 'home/welcome'
    else
      @planner = Planner.find_by(email: params[:user][:email]) || @goer = Goer.find_by(email: params[:user][:email])
      if @planner && @planner.authenticate(params[:user][:password]) || @goer && @goer.authenticate(params[:user][:password])
        flash[:notice] = "#{@planner.name} successfully logged in." || "#{@goer.name} successfully logged in."
        session[:planner_id] = @planner.id || session[:goer_id] = @goer.id
        redirect_to '/home/welcome'
      else
        flash[:notice] = "Something went wrong. Please try again."
        redirect_to "sessions/new"
      end
    end
  end

  def destroy
     session.delete(:user_id)
    redirect_to '/'
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
