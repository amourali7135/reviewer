class Verificationqr < ApplicationRecord
  belongs_to :business
  # belongs_to :user, optional: true

  # after_commit :autocreatenewverificationqr, if: :will_save_change_to_user_id?, on: [:update]

  private

  # def autocreatenewverificationqr
  #   Verificationqr.create(business_id: @business.id, user_id: nil) if (!self.user_id.nil?)
  # end
end
