class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :price_cents
      # t.text :food_tagging_list
      # t.text :service_tagging_list
      t.boolean :food, default: false
      # t.string :photo
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
