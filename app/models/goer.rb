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

end
