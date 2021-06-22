class Service < ApplicationRecord
  belongs_to :business
  has_many :reviews#, optional: true


  validates :name, presence: true
  validates :description, presence: true
  validates :price_cents, presence: true
  # validates :photo, presence: true for now

  has_many_attached :photos

end
