class User <  ActiveRecord::Base
  ROLES = %w[admin planner goer].freeze
  has_many :trips
  has_many :trip_categories, through: :trips
  accepts_nested_attributes_for :trips

  has_secure_password
  validates :email, :name, :personality, :reason, :international, :companion, :budget, presence: true
  validates :email, :name, uniqueness: true
  validates :role, inclusion: { in: %w(admin planner goer) }
  scope :planner, -> { where(role: 'planner') }
  scope :romance, -> { where(reason: 'honeymoon')}

  def self.romantics
    where(personality: 'Romantic')
  end

  def honeymoon
    self.where(reason: 'honeymoon')
  end

  def romantic_honeymoon
    self.romantic && self.honeymoon
  end


  def self.find_or_create_by_omniauth(auth_hash)
    where(email: auth_hash['info']['email']).first_or_create do |user|
      user.password = SecureRandom.hex
    end
  end

  def is_admin?
    role == 'admin'
  end

  def self.admins
    where("role = 'admin'")
  end

  def self.planners
    where("role = 'planner'")
  end

  def self.goers
    where("role = 'goer'")
  end





end
