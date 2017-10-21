class Planner < ApplicationRecord
  has_many :drafts
  has_many :trips, through: :drafts

  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true
end
