class BookingPolicy < ApplicationPolicy

  def create?
    return true
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end
