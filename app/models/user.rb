class User <  ActiveRecord::Base
  ROLES = %w[admin planner goer].freeze

  has_secure_password
  validates :email, :name, :personality, :reason, :international, presence: true
  validates :email, uniqueness: true

  def self.find_or_create_by_omniauth(auth_hash)
    where(email: auth_hash['info']['email']).first_or_create do |user|
      user.password = SecureRandom.hex
    end
  end

end
