class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  before_action :authorize_user, only: [:edit, :update]

  def index
    @users = User.all
    @planners = User.planners
    @goers = User.goers
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
  end

  def update
  	 @user.update(user_params)
     if @user.save
		   redirect_to user_path(@user)
     else
       flash[:notice] = "Access Denied."
       redirect_to users_path
     end
	end

  private

    def user_params
      params.require(:user).permit(:id, :name, :email, :password, :personality, :reason, :international, :companion, :budget, :role)
    end

    def set_user
      @user = User.find(params[:id])
    end

    def authorize_user
      return head(:forbidden) unless @user.id == current_user.id || current_user.role == 'admin'
    end

end
