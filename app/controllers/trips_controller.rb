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
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)
    redirect_to @trip
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :content, category_ids:[], categories_attributes: [:name])
  end

  def require_login
    return head(:forbidden) unless session.include? :goer_id || :planner_id
  end

end
