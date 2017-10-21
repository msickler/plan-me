class Goer < ApplicationRecord
  has_many :trips
  has_many :drafts, through: :trips

  has_secure_password
  validates :email, :name, :personality, :reason, :budget, :companion, presence: true
  validates :email, uniqueness: true
  validates :international, inclusion: { in: [true, false] }
end
