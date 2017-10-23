class TripsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:sample]

  def sample
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new(planner_id: params[:planner_id])
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to @trip
    else
      render :new
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
       redirect_to trip_path(@trip)
     else
       render :edit
     end
   end

  private

  def trip_params
    params.require(:trip).permit(:name, :content, category_ids:[], categories_attributes: [:name], :author_id)
  end

  def require_login
    return head(:forbidden) unless session.include? :goer_id || :planner_id
  end

end
