class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  include TripsHelper

  def sample
  end

  def index
    @trips = Trip.all
    authorize @trips
  end

  def show
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      @trip = @user.trips.find_by(id: params[:id])
      if @trip.nil?
        redirect_to user_trips_path(@user), alert: "Trip not found"
      end
    else
      @trip = Trip.find(params[:id])
    end
  end

  def new
    @trip = Trip.new
    authorize @trip
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    authorize @trip

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @trip = Trip.find(params[:id])
    authorize @trip
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    if @trip.save
       redirect_to @trip
     else
       render :edit
     end
   end

   def destroy
     @trip = Trip.find(params[:id])
     authorize @trip
     @trip.destroy
     redirect_to trips_url, notice: 'Post was successfully destroyed.'
   end

  private

  def trip_params
    params.require(:trip).permit(:name, :content, :user_id, :user_id, category_ids:[], categories_attributes: [:name])
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
