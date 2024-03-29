class CreatePerks < ActiveRecord::Migration[6.0]
  def change
    create_table :perks do |t|
      t.string :title
      t.text :description
      t.integer :count
      t.boolean :active, default: true
      t.references :business, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
