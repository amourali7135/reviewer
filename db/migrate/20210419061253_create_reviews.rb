class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :business_rating
      t.text :business_review
      t.integer :useful
      t.integer :funny
      t.integer :cool
      t.integer :questionable
      t.integer :service
      t.integer :value
      t.integer :atmosphere
      t.boolean :service_review_too, default: false
      t.integer :service_rating
      t.text :service_review
      # t.string :photo
      t.boolean :proof, default: false
      t.text :followup
      t.references :business, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
