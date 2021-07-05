class Logo < ApplicationRecord
  belongs_to :business
  has_one_attached :photo

  validates :photo, attached: true, presence: true

end
