class User < ApplicationRecord

  has_secure_password
  validates :email, :name, :personality, :reason, presence: true
  validates :email, uniqueness: true
  validates :international, inclusion: { in: [true, false] }

end 
