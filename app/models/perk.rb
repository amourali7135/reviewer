class Perk < ApplicationRecord
  belongs_to :business

  validates :title, presence: true
  validates :description, presence: true
  validates :count, presence: true
end
