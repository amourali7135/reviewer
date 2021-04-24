class Userqr < ApplicationRecord
  belongs_to :feedback, optional: true
  belongs_to :review, optional: true
  belongs_to :business, optional: true
  belongs_to :user
end
