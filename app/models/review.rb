class Review < ApplicationRecord
  belongs_to :business
  belongs_to :service
  belongs_to :user

  validates :title, presence: true
  validates :rating, presence: true
  validates :content, presence: true
  validates :photo, presence: true

  has_many_attached :photos

end
