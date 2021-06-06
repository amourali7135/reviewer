class Review < ApplicationRecord
  has_rich_text :content
  
  belongs_to :business
  belongs_to :service
  belongs_to :user

  validates :title, presence: true
  validates :rating, presence: true
  validates :content, presence: true
  validates :photo, presence: true

  has_many_attached :photos
  has_many :userqrs

  # after_create :autocreateuserqr

  # private

  # #Test the shit out of this!
  # def autocreateuserqr
  #   Userqr.create(user_id: self.id, business_id: review.business_id) if !current_user.feedback.present? && current_user.review.save
  #   # !Userqr.where(user_id: self.id, business_id: business_id).present?
  # end


end
