class TripPolicy < ApplicationPolicy
  def index?
    true
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
