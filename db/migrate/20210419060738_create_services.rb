class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :price_cents
      # t.string :photo
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
