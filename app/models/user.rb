class User <  ActiveRecord::Base
  has_many :trips
  has_many :trip_categories, through: :trips

  has_secure_password
  validates :email, :name, :personality, :reason, presence: true
  validates :email, uniqueness: true
  validates :international, inclusion: { in: [true, nil] }

  def self.find_or_create_by_omniauth(auth_hash)
    where(email: auth_hash['info']['email']).first_or_create do |user|
      user.password = SecureRandom.hex
    end
  end

end
