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
    if params[:planner_id] && !Planner.exists?(params[:planner_id])
      redirect_to planners_path, alert: "Planner not found."
    else
      @trip = Trip.new(planner_id: params[:planner_id])
    end
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
    if params[:planner_id]
      planner = Planner.find_by(id: params[:planner_id])
      if planner.nil?
        redirect_to planners_path, alert: "Planner not found."
      else
        @trip = planner.trips.find_by(id: params[:id])
        redirect_to planner_trips_path(planner), alert: "Trip not found." if @trip.nil?
      end
    else
      @trip = Trip.find(params[:id])
    end
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
