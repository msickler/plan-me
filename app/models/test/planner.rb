class Planner < User
  #has_many :trips
  #has_many :trip_categories, through: :trips

  #accepts_nested_attributes_for :trips

  def self.workaholics
    joins(:trips).group(:trip_id).having('count(trips.id) > 4')
  end

  def self.recent_trips
    time_range = (Time.now.midnight - 3.day)..Time.now.midnight
    joins(:trips).where(trips: { created_at: time_range })
  end

  def self.all_with_trip_count
    left_outer_joins(:trips).distinct.select('planners.*, COUNT(trips.*) AS trips_count').group('planners.id')
  end





end
