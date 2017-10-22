class Goer < User
  has_many :trips
  has_many :drafts, through: :trips

  validates super, :budget, :companion, presence: true

end
