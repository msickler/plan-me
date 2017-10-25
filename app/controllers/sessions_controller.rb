class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if auth_hash = request.env['omniauth.auth']
      @user = User.find_or_create_by_omniauth(auth_hash)
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @user = User.find_by(email: params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
        flash[:notice] = "#{@user.name} successfully logged in."
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:notice] = "Error, Email and Password don't match."
        render :new
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
