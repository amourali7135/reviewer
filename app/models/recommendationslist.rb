class Recommendationslist < ApplicationRecord
  belongs_to :user
  belongs_to :business
  belongs_to :service
end
