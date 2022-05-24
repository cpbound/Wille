class Will < ApplicationRecord
  belongs_to :user
  def index
    @will = Will.all
  end
end
