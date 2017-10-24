class TripsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:sample]
  include TripsHelper

  def sample
  end

  def index
    if params[:user_id]
      @user = User.find_by(id: params[:user_id])
      if @user.nil?
        redirect_to users_path, alert: "User not found"
      else
        @trips = @user.trips
      end
    else
      @trips = Trip.all
    end
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
    if params[:user_id] && !User.exists?(params[:user_id])
      redirect_to users_path, alert: "User not found."
    else
      @trip = Trip.new(user_id: params[:user_id])
    end
  end

  def create
    @trip = Trip.new(trip_params)
    @user = @trip.user
    if @trip.save
      redirect_to @trip
    else
      render :new
    end
  end

  def edit
    if params[:user_id]
      user = User.find_by(id: params[:user_id])
      if user.nil?
        redirect_to users_path, alert: "User not found."
      else
        @trip = user.trips.find_by(id: params[:id])
        redirect_to user_trips_path(user), alert: "Trip not found." if @trip.nil?
      end
    else
      @trip = Trip.find(params[:id])
    end
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
