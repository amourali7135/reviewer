class Service < ApplicationRecord
  belongs_to :business
  has_many :reviews#, optional: true
  has_many :perks
  has_many :projects

  # acts_as_taggable_on :tags
  # acts_as_taggable_on :food_tagging_list, :service_tagging_list
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
