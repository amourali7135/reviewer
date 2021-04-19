class CreateRecommendationslists < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendationslists do |t|
      t.string :title
      t.text :summary
      t.string :city
      t.text :descriptions
      t.string :photo
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.references :business, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
