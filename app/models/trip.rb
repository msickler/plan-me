class Trip <  ActiveRecord::Base
  belongs_to :user
  has_many :trip_categories
  has_many :categories, through: :trip_categories
   accepts_nested_attributes_for :trip_categories

  validates :name, :content, presence: true
  validates :name, uniqueness: true, length: { minimum: 5 }
  #validates :content, length: { minimum: 600 }

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
    category = Category.find_or_create_by(category_attribute)
    self.categories << category
  end
end

def trip_categories_attributes=(attributes)
    @trip_categories ||= []
    attributes.each do |i, trip_category_params|
      @trip_categories.push(TripCategory.new(trip_category_params))
    end
  end

#  def trip_categories_attributes=(trip_category_attributes)
#    trip_category_attributes.values.each do |trip_category_attribute|
#      self.trip_categories.build(trip_category_attribute)
#      end
#  end

def note(category_id, trip_id)
  trip = Trip.find(trip_id)
  category = Category.find(category_id)
  category.category_trips.find_by(trip_id: trip_id).note
end


  #def update_attributes(category_ids, trip_category_note)
  #      @trip_category = TripCategory.new(trip_id: self.id, category_id: self.category_ids[0], note: trip_category_note)
  #      @trip_category.save
  #  end


end
