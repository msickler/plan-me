class TripsController < ApplicationController
  #before_action :set_trip, only: [:show, :edit, :update, :destroy]
  #skip_before_action :set_trip, only: [:sample]
  #include TripsHelper

  def sample
  end

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    binding.pry
    if @trip.save
      redirect_to trip_path(@trip)
    else
      flash[:notice] = "Sorry, something went wrong."
      redirect_to new_trip_path
    end
  end

  def show
    @trip = Trip.find_by(id: params[:id])
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
    params.require(:trip).permit(:id, :name, :content, :user_id, category_ids:[], categories_attributes: [:name])
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

end
