class TripCategoriesController < ApplicationController
  def new
    @tripcategory = TripCategory.new
  end

  def create
    @tripcategory = TripCategory.new
  end

end 
