class Trip <  ActiveRecord::Base
  belongs_to :user
  has_many :trip_categories
  has_many :categories, through: :trip_categories
  accepts_nested_attributes_for :trip_categories

  validates :name, :content, presence: true
  validates :name, uniqueness: true, length: { minimum: 5 }
  validates :content, length: { minimum: 600 }

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def note(trip_id, category_id)
    trip = Trip.find(trip_id)
    category = Category.find(category_id)
    category.trip_categories.find_by(trip_id: trip_id).note
  end



end
