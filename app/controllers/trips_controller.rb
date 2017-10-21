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

 def create
   @trip = Trip.create(author_id: planner_id)
 end

 private

 def require_login
   return head(:forbidden) unless session.include? :goer_id || :planner_id
 end

end
