class PlannerSessionsController < ApplicationController

  def new
    @planner = Planner.new
  end

  def create
    @planner = Planer.find_by(email: params[:planner][:email])
    if @planner && @planner.authenticate(params[:planner][:password])
      flash[:notice] = "#{@planner.email} successfully logged in."
      session[:planner_id] = @planner.id
      redirect_to planner_path(@planner)
    else
      flash[:notice] = "Something went wrong. Please try again."
      redirect_to "/login"
    end
  end

  def destroy
    session.delete :planner_id
    redirect_to '/'
  end

end
