class Goer < ApplicationRecord
  belongs_to :planner
  has_many :trips
end
