class FuneralPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      user.funeral
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
