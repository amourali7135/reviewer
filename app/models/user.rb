class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_one :business # For MVP to save time, later on do logic for multiple.
  has_one :ownerverificationrequest
  has_many :services, through: :business
  has_many :perks, through: :business
  has_many :reviews
  has_many :feedbacks
  has_many :responses, through: :feedback
  has_many :recommendationslists, dependent: :destroy
  has_many :redemptions
  has_many :verification_qrs
  has_many :userqrs

  #Wait, is this here or in other two models?  Shit.
  after_create :autocreateuserqr

  private

  def autocreateuserqr
    Userqr.create(user_id: self.id) if user.feedback.save || user.review.save
  end

  #need a callback to create their QR code for business after review/feedback given!

end
