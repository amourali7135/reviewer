class Service < ApplicationRecord
  belongs_to :business

  validates :name, presence: true
  validates :description, presence: true
  validates :price_cents, presence: true
  validates :photo, presence: true

  has_many_attached :photos

end
