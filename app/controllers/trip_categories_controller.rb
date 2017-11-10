class TripCategoriesController < ApplicationController

  def new
    @trip_category = TripCategory.new
  end

  def create
    @trip_category = TripCategory.new(trip_category_params)
    @trip_category.save
  end

  def show
    @trip_category = TripCategory.find(params[:id])
  end

  private
  def trip_category_params
    params.require(:trip_category).permit(:id, :trip_id, :category_id, :note)
  end


end
