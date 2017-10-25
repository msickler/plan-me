class UserPolicy < ApplicationPolicy

  #def update?
  #    user == resource
  #end
  def update?
    user.present? && user.try(:user) == user || user.is_admin?
  end


end
