class Trip < ApplicationRecord
  belongs_to :goer
  has_many :drafts
end
