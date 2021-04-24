class Business < ApplicationRecord
  belongs_to :user, optional: true

  has_many :perks, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :recommendationslists #Can a dependent destroy fuck this up later for people?
  has_one :verification_qr, dependent: :destroy #plural or singular?
  has_one :schedule, dependent: :destroy #plural or singular?
  has_many :userqrs, dependent: :destroy

  validates :name, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :price_range, presence: true
  validates :about, presence: true
  validates :founded, presence: true
  validates :payments, presence: true
  validates :restaurant, presence: true

  has_many_attached :photos

  #Callback to automatically create a QR code for them.
  after_create :autocreateverificationqr

  private

  def autocreateverificationqr
    Verification_qr.create(business_id: self.id)
  end

end
