class VerificationQr < ApplicationRecord
  belongs_to :business
  belongs_to :user, optional: true


end
