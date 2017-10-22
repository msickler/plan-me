class Trip < ApplicationRecord
  belongs_to :goer
  belongs_to :planner
  belongs_to :category

  validates :name, length: { minimum: 5 }
  validates :content, length: { minimum: 600 }
  validates :planner, presence: true
end
