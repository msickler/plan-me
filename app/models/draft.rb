class Draft < ApplicationRecord
  belongs_to :planner
  belongs_to :trip
end
