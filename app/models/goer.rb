class Goer < ApplicationRecord
  has_many :trips
  has_many :drafts, through: :trips

  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true
end
