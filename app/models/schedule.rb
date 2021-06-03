class Schedule < ApplicationRecord
  belongs_to :business

  # validates :opens_at, presence: true
  # validates :closes_at, presence: true
  # validates :weekday, presence: true
end
