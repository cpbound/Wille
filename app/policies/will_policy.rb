class WillPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user:user)
    end
  end
  def create?
  return true
  end

  def edit?
  return true
  end

  def update?
  record.user == user
  # - record: the restaurant passed to the `authorize` method in controller
  # - user:   the `current_user` signed in with Devise.
  end
end