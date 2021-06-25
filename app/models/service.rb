class Service < ApplicationRecord
  belongs_to :business
  has_many :reviews#, optional: true
  has_many :perks

  acts_as_taggable_on :food_taggings, :service_taggings

  validates :name, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :price_cents, presence: true
  # validates :photos, attached: true#, limit: { min: 1, max: 10 }

  has_many_attached :photos

  def self.foodlist
    ["Burger", "French fries", "Sushi"]
  end

end
