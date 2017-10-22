class SessionsController < ApplicationController
  #def create
  #  @user = User.find_or_create_by(uid: auth['uid']) do |u|
  #    u.name = auth['info']['name']
  #    u.email = auth['info']['email']
  #    u.image = auth['info']['image']
  #  end
  #  session[:user_id] = @user.id
  #  render '/'
  #end

  def new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:session][:password])
      flash[:notice] = "#{@user.name} successfully logged in."
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:notice] = "Something went wrong. Please try again."
      redirect_to "/login"
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
