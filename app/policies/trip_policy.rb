class TripPolicy < ApplicationPolicy
  attr_reader :user, :trip
  class Scope < Scope
       def resolve
         if user.is_admin?
           scope.all
         else
           scope.where(:user_id => user.id)
         end
       end
     end

  #def initialize(user, trip)
    #   super(user, trip)
      # @trip = record
     #end

  def index?
    user.present?
  end

  def create?
    user.is_admin? || trip.try(:user) == user
  end

  def update?
    trip.try(:user) == user || user.is_admin?
  end

#  def destroy?
#    user.present? && user.is_admin? || user == trip.user
#  end

  private
  def trip
    record
  end

end
