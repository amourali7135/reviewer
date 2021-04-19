class Response < ApplicationRecord
  belongs_to :feedback

  validates :content, presence: true
  validates :title, presence: true


end
