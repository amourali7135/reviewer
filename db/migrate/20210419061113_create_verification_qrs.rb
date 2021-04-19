class CreateVerificationQrs < ActiveRecord::Migration[6.0]
  def change
    create_table :verification_qrs do |t|
      t.references :business, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
