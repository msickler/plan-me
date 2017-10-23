class Trip <  ActiveRecord::Base
  belongs_to :goer
  belongs_to :planner
  has_many :trip_categories
  has_many :categories, through: :trip_categories
  accepts_nested_attributes_for :categories, reject_if: :all_blank

  validates :name, length: { minimum: 5 }
  validates :content, length: { minimum: 600 }

  scope :recent, lambda { where('published_at >= ?', Time.now - 1.week) }

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

  def self.biggest
    order("length DESC").first
  end

  def self.recent_and_biggest
    self.recent.biggest
  end



end
