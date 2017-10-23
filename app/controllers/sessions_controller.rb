class SessionsController < ApplicationController
  #def test
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

  def login
    render :'users/login'
  end

  def create
    if auth_hash = request.env['omniauth.auth']
      oauth_email = request.env['omniauth.auth']['email']
      if user = User.find_by(email: oauth_email)
        session[:user_id] = user.id
      else
        user = User.create(email: oauth_email)
        session[:user_id] = user.id
      end

    else
      @user = User.find_by(email: params[:user][:email])
      if @user && @user.authenticate(params[:session][:password])
        flash[:notice] = "#{@user.name} successfully logged in."
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:notice] = "Something went wrong. Please try again."
        redirect_to "/sessions/new"
      end
    end
  end

  def destroy
    session[:user_id].delete
    redirect_to '/'
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
