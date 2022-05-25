class ExecutorPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
     def resolve
      scope.where(user:user)
    end
  end

  def edit?
    true
  end

  def update?
    true
  end
end
