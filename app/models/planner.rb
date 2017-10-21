class Planner < ApplicationRecord
  has_many :drafts, inverse_of: :planner
  has_many :trips, inverse_of: :planner

  has_secure_password
  validates :email, :name, :personality, :reason, presence: true
  validates :email, uniqueness: true
  validates :international, inclusion: { in: [true, false] }

end
