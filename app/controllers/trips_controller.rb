class TripsController < ApplicationController
  before_action :must_log_in
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  before_action :require_planner, only: [:new, :create, :edit, :update]

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
    @user_id = current_user.id
    @trip_categories = @trip.trip_categories
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id

    @trip_category = @trip.trip_categories
    binding.pry
    @trip_category.note = params[:trip_category][:note]
    @trip_category.save

    if @trip.save
      flash[:notice] = "#{@trip.name.capitalize} was successfully created!"
      redirect_to trip_path(@trip)
    else
      flash[:notice] = "Something went wrong."
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @trip.update(trip_params)
    if @trip.save
      flash[:notice] = "#{@trip.name.capitalize} was updated!"
      redirect_to trip_path(@trip)
    else
      flash[:notice] = "Access Denied."
      redirect_to trips_path
    end
  end

   def destroy
     if current_user.id == @trip.user_id || current_user.role == 'admin'
       @trip.destroy
       redirect_to trips_url, notice: 'Trip was successfully destroyed.'
     else
       flash[:notice] = "Access Denied."
       redirect_to trips_path
     end
   end

  private

  def trip_params
    params.require(:trip).permit(:id, :name, :content, :user_id, category_ids:[], categories_attributes: [:name])
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def require_planner
     return head(:forbidden) unless current_user.role == 'planner' || current_user.role == 'admin'
   end

end
