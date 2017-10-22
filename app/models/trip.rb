class Trip < ApplicationRecord
  belongs_to :goer
  belongs_to :planner
  has_many :trip_categories
  has_many :categories, through: :trip_categories
  accepts_nested_attributes_for :categories

  validates :name, length: { minimum: 5 }
  validates :content, length: { minimum: 600 }
  validates :planner, presence: true

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

end
