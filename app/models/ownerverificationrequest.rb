class Ownerverificationrequest < ApplicationRecord
  belongs_to :business
  belongs_to :user

  validates :proof, presence: true
end
