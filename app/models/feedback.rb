class Feedback < ApplicationRecord
  belongs_to :business
  belongs_to :user
end
