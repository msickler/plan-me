class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  after_action :verify_policy_scoped, only: :index
  skip_after_action :verify_authorized, only: :sample
  include TripsHelper

  def sample
  end

  def index
    @trips = Trip.all
    authorize @trips
  end

  def show
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
  end

  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
   end

   def destroy
     @trip.destroy
     redirect_to trips_url, notice: 'Trip was successfully destroyed.'
   end

  private

  def trip_params
    params.require(:trip).permit(:name, :content, :user_id, category_ids:[], categories_attributes: [:name])
  end

  def set_trip
    @trip = Trip.find(params[:id])
    authorize @trip
  end

end
