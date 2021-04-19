class Recommendationslist < ApplicationRecord
  belongs_to :user
  belongs_to :business
  belongs_to :service

  validates :title, presence: true
  validates :summary, presence: true
  validates :city, presence: true
  valdiates :description, presence: true
  validates :photo, presence: true
  validates :rating, presence: true


end
