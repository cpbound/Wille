class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
  has_one :funeral, dependent: :destroy
  has_many :wills, dependent: :destroy
  has_many :executors, dependent: :destroy
  has_one_attached :photo
  has_one :executor
end
