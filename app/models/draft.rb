class Draft < ApplicationRecord
  belongs_to :planner
  belongs_to :trip

  validates :name, length: { minimum: 5 }
  validates :content, length: { minimum: 500 }
  validates :planner, :trip, presence: true
end
