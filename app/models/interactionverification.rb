class Interactionverification < ApplicationRecord
  belongs_to :business
  belongs_to :user, optional: true

  private


end
