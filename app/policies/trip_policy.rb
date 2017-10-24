class TripPolicy < ApplicationPolicy
  attr_reader :user, :trip

  def initialize(user, trip)
    @user = user
    @trip = trip
  end

  def index?
    user.present?
  end

  def create?
    user.present?
  end

  def update?
    return true if user.present? && user == trip.user || user.admin?
  end

  def destroy?
    user.present? && user.admin? || user == trip.user
  end

  private
  def trip
    record
  end

end
