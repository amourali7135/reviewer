class Business < ApplicationRecord
  belongs_to :user

  has_many :perks, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :verification_qrs, dependent: :destroy
  has_one :schedules, dependent: :destroy
  has_many :recommendationslists #Can a dependent destroy fuck this up later for people?

  validates :name, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :price_range, presence: true
  validates :about, presence: true
  validates :founded, presence: true
  validates :payments, presence: true
  validates :restaurant, presence: true

end
