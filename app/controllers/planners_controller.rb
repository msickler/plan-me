class PlannersController < ApplicationController

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
    @planner = Planner.find(params[:id])
  end

  def show
    @planner = Planner.find_by(id: params[:id])
  end

  def update
		@planner = Planner.find(params[:id])
		@planner.update(email: params[:email], personality: params[:personality], reason: params[:reason], international: params[:international])
		redirect_to planner_path(@planner)
	end

  private
    def planner_params
      params.require(:planner).permit(:id, :email, :password, :personality, :reason, :international)
    end

end
