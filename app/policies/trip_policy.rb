class TripPolicy < ApplicationPolicy
  attr_reader :user, :trip

  def initialize(user, trip)
       super(user, trip)
       @trip = record
     end

  def index?
    user.present?
  end

  def create?
    user.present?
  end

  def update?
    user.present? && trip.try(:user) == user || user.admin?
  end

  def destroy?
    user.present? && user.admin? || user == trip.user
  end

  private
  def trip
    record
  end

end
