class Planner < User
  has_many :trips
  has_many :categories, through: :trips

  accepts_nested_attributes_for :trips


end
