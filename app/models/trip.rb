class Trip < ApplicationRecord
  belongs_to :goer
  belongs_to :planner
  has_many :drafts, inverse_of: :trip

  validates :name, length: { minimum: 5 }
  validates :content, length: { minimum: 600 }
  validates :planner, presence: true
end
