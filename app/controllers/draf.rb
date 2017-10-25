class UsersController < ApplicationController
  #before_action :must_log_in, only: [:new, :show, :update]
  #before_action :current_user, only: [:new, :show, :update]

  def index
    @users = User.all
    @planners = User.planners
    @goers = User.goers
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def edit
    if current_user.id == session[:user_id]
      @user = User.find(params[:id])
    else
      flash[:notice] = "Access Denied."
      redirect_to users_path
    end
  end

  def update
	   @user = User.find(params[:id])
  	 @user.update(user_params)
     if @user.save
		   redirect_to user_path(@user)
     else
       flash[:notice] = "Access Denied."
       redirect_to users_path
     end
	end

  def show
    @user = User.find(params[:id])
  end
