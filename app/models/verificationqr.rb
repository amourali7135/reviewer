class Verificationqr < ApplicationRecord
  belongs_to :business
  belongs_to :user, optional: true

end
