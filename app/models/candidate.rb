class Candidate < ApplicationRecord
    
    has_many :skills, dependent: :destroy
    
    validates :phone_number , presence: true, length: { maximum: 20 }
    validates :name , presence: true, length: { maximum: 20 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 100 },
                        uniqueness: { case_sensitive: false },
                        format: { with: VALID_EMAIL_REGEX }
    
end