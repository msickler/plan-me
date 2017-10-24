class TripPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.admin?
        scope.all
      else
        scope.where(published: true)
      end
    end
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
