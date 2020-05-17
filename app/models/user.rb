class User < ApplicationRecord
  
  has_secure_password
  validates :password_digest, presence: true, length: { minimum: 6 }, allow_nil: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 100 },
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
                    
end