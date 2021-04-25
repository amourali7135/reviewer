class Userqr < ApplicationRecord
  belongs_to :feedback, optional: true
  belongs_to :review, optional: true
  belongs_to :business, optional: true
  belongs_to :user

  #IS this even the right place?  Shit.
  private

  # #Test the shit out of this!
  # def autocreateuserqr
  #   Userqr.create(user_id: self.id) if !current_user.feedback.present? && !current_user.review.present? && current_user.feedback.save || current_user.review.save
  # end

end
