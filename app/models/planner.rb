class Planner < ApplicationRecord
  has_many :goers
  has_many :drafts
  has_many :trips, through: :drafts
end
