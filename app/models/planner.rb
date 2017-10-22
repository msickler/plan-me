class Planner < User
  has_many :trips
  has_many :categories, through: :trips



end
