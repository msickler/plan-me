class GoerSessionsController < ApplicationController

  def new

  end

  def login
    render :'goers/login'
  end

  def create
    @goer = Goer.find_by(email: params[:goer][:email])
    if @goer && @goer.authenticate(params[:session][:password])
      flash[:notice] = "#{@goer.email} successfully logged in."
      session[:goer_id] = @goer.id
      redirect_to goer_path(@goer)

    else
      flash[:notice] = "Something went wrong. Please try again."
      redirect_to new_goer_path
    end
  end

  def destroy
    session.delete :goer_id
    redirect_to '/'
  end

end
