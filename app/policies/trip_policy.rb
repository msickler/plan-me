class TripPolicy < ApplicationPolicy
  def destroy?
    user.admin?
  end
end
