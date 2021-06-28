class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      # t.string :photo
      t.text :description
      t.integer :price_cents
      t.text :offerings
      t.date :completion
      t.string :time_taken
      t.references :business, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
