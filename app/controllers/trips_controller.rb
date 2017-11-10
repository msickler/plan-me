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
    #@trip_category = TripCategory.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    #@trip.trip_categories = TripCategory.new(trip_category_params)
    #@trip_category = TripCategory.new(trip_id: @trip.id, category_id: @trip.category_ids.find(:id), note: params[:note])
    #@trip_category.save
    if @trip.save
      binding.pry
      flash[:notice] = "#{@trip.name.capitalize} was successfully created!"
      redirect_to trip_path(@trip)
    else
      flash[:notice] = "Something went wrong."
      render :new
    end
  end

  def show
    binding.pry
  end

  def edit
  end

  def update
    if @trip.trip_categories.present?
      @trip.update_attributes(@trip.category_ids[0], params[:trip_category][:note])
    if @trip.save
      flash[:notice] = "#{@trip.name.capitalize} was updated!"
      redirect_to trip_path(@trip)
    else
      flash[:notice] = "Access Denied."
      redirect_to trips_path
    end
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
    params.require(:trip).permit(:id, :name, :content, :user_id, category_ids:[], categories_attributes: [:name], trip_categories_attributes: [:note], trip_category_attributes: [:note])
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def require_planner
     return head(:forbidden) unless current_user.role == 'planner' || current_user.role == 'admin'
   end

   def trip_category_params
     params.require(:trip_category).permit(:id, :trip_id, :category_id, :note)
   end

end
