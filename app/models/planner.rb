class Planner < User
  has_many :trips
  has_many :categories, through: :trips

  accepts_nested_attributes_for :trips

  def self.workaholics
    joins(:trips).group(:trip_id).having('count(boats.id) > 5')
  end


end
