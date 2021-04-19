class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :businesses
  has_many :services, through: :business
  has_many :perks, through: :business
  has_many :reviews
  has_many :feedbacks
  has_many :responses, through: :feedback
  has_many :ownerverificationrequests
  has_many :recommendationslists, dependent: :destroy
  has_many :redemptions
  has_many :verification_qrs

end
