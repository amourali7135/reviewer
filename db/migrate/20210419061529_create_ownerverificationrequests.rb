class CreateOwnerverificationrequests < ActiveRecord::Migration[6.0]
  def change
    create_table :ownerverificationrequests do |t|
      t.text :proof
      t.references :business, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
