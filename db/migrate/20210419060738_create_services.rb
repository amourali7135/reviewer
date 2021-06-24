class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :price_cents
      t.text :food_taggings
      t.text :service_taggings
      t.boolean :food, default: false
      # t.string :photo
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
