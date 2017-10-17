class Goer < ApplicationRecord
  belongs_to :planner
  has_many :trips

  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true
end
