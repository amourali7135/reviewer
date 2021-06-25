class Perk < ApplicationRecord
  belongs_to :business
  has_many :redemptions
  belongs_to :service

  validates :title, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :count, presence: true

  # Do I need to have a product to attach a perk to?  Is that even necessary?  Could be useful for analytics later, do it.  
  #  Tags?  Nah.
  #  Deactivate to hide, but not delete!

end
