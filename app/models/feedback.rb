class Feedback < ApplicationRecord
  belongs_to :business
  belongs_to :user

  validates :title, presence: true
  validates :advice, presence: true
  validates :date_interacted, presence: true
  validates :rating, presence: true
  # validates :photos, attached: true, limit: { min: 1, max: 10 }

  has_many_attached :photos
  has_many :userqrs

  # after_create :autocreateuserqr

  # private

  # #Test the shit out of this!
  # def autocreateuserqr
  #   Userqr.create(user_id: self.id, business_id: feedback.business_id) if !current_user.review.present? && current_user.feedback.save
  #   # !Userqr.where(user_id: self.id, business_id: business_id).present?
  # end



end
