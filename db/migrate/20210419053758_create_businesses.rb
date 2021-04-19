class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :price_range
      t.string :photo
      t.boolean :claimed
      t.text :about
      t.date :founded
      t.string :website
      t.string :instagram
      t.string :facebook
      t.text :health_safety
      t.text :highlights
      t.text :accessibility
      t.text :offerings
      t.text :amenities
      t.text :payments
      t.boolean :parking
      t.boolean :influencer_hub
      t.boolean :local_favorite
      t.boolean :restaurant
      t.text :delivery_options
      t.boolean :alcohol
      t.boolean :takeout
      t.boolean :vegan_vegetarian_friendly
      t.boolean :gluten_free_friendly
      t.boolean :pet_friendly
      t.boolean :delivery
      t.boolean :kid_friendly
      t.boolean :scenic
      t.text :service_options
      t.boolean :reservations
      t.boolean :verified
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
