class Feedback < ApplicationRecord
  belongs_to :business
  belongs_to :user

  validates :title, presence: true
  validates :advice, presence: true
  validates :date_interacted, presence: true
  validates :rating, presence: true
end
