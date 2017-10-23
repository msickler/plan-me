class Goer < User
  has_many :trips
  has_many :categories, through: :trips

  validates :budget, :companion, presence: true

  def find_sti_class(type_name)
    type_name = self.name
    super
  end

  def sti_name
    'Goer'
  end

  def self.no_trips_yet
    where("trips_count = '0'")
  end

  def self.created_asc
    order(created_at: :asc)
  end

  def self.by_trips_count
    order(:trips_count, created_at: :desc)
  end

  def self.all_with_trip_count
    left_outer_joins(:trips).distinct.select('goers.*, COUNT(trips.*) AS trips_count').group('goers.id')
  end

end
