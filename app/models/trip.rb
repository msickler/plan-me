class Trip < ApplicationRecord
  belongs_to :goer
  belongs_to :planner
  has_many :drafts
end
