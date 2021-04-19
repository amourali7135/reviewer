class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rating
      t.text :content
      t.integer :useful
      t.integer :funny
      t.integer :cool
      t.integer :questionable
      t.integer :food_rating
      t.integer :service
      t.integer :value
      t.integer :atmosphere
      t.string :photo
      t.boolean :proof
      t.references :business, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
