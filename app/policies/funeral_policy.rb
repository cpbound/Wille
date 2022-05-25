class FuneralPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user:user)
    end
  end

  def new?
    true
  end

  def show?
    true
  end

  def update?
    true
  end
end
