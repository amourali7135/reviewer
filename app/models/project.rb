class Project < ApplicationRecord
  belongs_to :business
  
  validates :title, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :price_cents, presence: true
  validates :completion, presence: true
  validates :time_taken, presence: true, length: { minimum: 3 }
  validates :photos, attached: true, limit: { min: 1, max: 10 }
  # What the fuck was offerings in my mind when I thought it up?  

  has_many_attached :photos  
  
end
