class PlannersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def index
    @planners = Planner.all
  end

  def new
    @planner = Planner.new
  end

  def create
    @planner = Planner.new(planner_params)
    if @planner.save
      session[:planner_id] = @planner.id
      redirect_to planner_path(@planner)
    else
      redirect_to new_planner_path
    end
  end

  def edit
    if current_planner.id == session[:planner_id]
      @planner = Planner.find(params[:id])
    else
      flash[:notice] = "Access Denied."
      redirect_to planners_path
    end
  end

  def show
    #if session[:user_id]
    @planner = Planner.find_by(id: params[:id])

  end

  def update
    if current_planner.id == session[:planner_id]
		   @planner = Planner.find(params[:id])
  	   @planner.update(planner_params)
		   redirect_to planner_path(@planner)
     else
       flash[:notice] = "Access Denied."
       redirect_to planners_path
     end
	end

  private

    def planner_params
      params.require(:planner).permit(:id, :name, :email, :password, :personality, :reason, :international)
    end

    def require_login
      return head(:forbidden) unless session.include? :planner_id || :goer_id
    end

end
