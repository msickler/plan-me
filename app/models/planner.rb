class Planner < User
  has_many :drafts, inverse_of: :planner
  has_many :trips, inverse_of: :planner



end
