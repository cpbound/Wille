class Executor < ApplicationRecord
  belongs_to :user
  validates :name, :address, presence: true, uniqueness: true
end
