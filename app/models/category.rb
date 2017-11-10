class Category <  ActiveRecord::Base
  has_many :trip_categories
  has_many :trips, through: :trip_categories

  validates :name, presence: true

  def note(trip_id, category_id)
      category = Category.find(category_id)
      trip = Trip.find(trip_id)
      trip.trip_categories.find_by(category_id: category_id).note
  end

end
