class Skill < ApplicationRecord
  
  belongs_to :candidate, required: false
  
  validates :proficiency, presence: true
  validates :name , presence: true, length: { maximum: 30 }
  validates :description , presence: true, length: { maximum: 50 }
  
end
