class Redemption < ApplicationRecord
  belongs_to :perk
  belongs_to :user

  validates :redeemed, presence: true
  validates :locked, presence: true
end
