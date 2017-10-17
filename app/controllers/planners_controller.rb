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
      redirect_to "/login"
    end
  end

  def show
    @planner = Planner.find_by(id: params[:id])
  end

  private
    def planner_params
      params.require(:planner).permit(:id, :email, :password, :personality, :reason, :international)
    end

end
