class Recommendationslist < ApplicationRecord
  belongs_to :user
  belongs_to :business
  belongs_to :service

  validates :title, presence: true
  validates :summary, presence: true
  validates :city, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :rating, presence: true

  has_many_attached :photos

end
