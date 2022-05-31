class WillPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def edit?
    return true
  end

  def invite?
    record.user == user
  end

  def executor?
    return true
  end

  def update?
    record.user == user
  end
end
