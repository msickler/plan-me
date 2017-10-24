class TripPolicy < ApplicationPolicy
  def destroy?
    user.present? && user.admin? || user == trip.user
  end

  def index?
      true
    end

    def create?
      user.present?
    end

    def update?
      return true if user.present? && user == trip.user || user.admin?
    end

    private

      def trip
        record
      end

end
