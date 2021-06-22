class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :price_range
      # t.string :photo
      t.boolean :claimed, default: false
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
      t.boolean :parking, default: false
      t.boolean :influencer_hub, default: false
      t.boolean :local_favorite, default: false
      t.boolean :restaurant, default: false
      t.text :delivery_options
      t.boolean :alcohol, default: false
      t.boolean :takeout, default: false
      t.boolean :vegan_vegetarian_friendly, default: false
      t.boolean :gluten_free_friendly, default: false
      t.boolean :pet_friendly, default: false
      t.boolean :delivery, default: false
      t.boolean :kid_friendly, default: false
      t.boolean :scenic, default: false
      t.text :service_options
      t.string :logo
      t.text :history
      t.text :intro
      t.text :specialties
      t.boolean :reservations, default: false
      t.boolean :verified, default: false
      t.boolean :permanently_closed, default: false
      t.references :user, null: true, foreign_key: true #null: true or false with optional?

      t.timestamps
    end
  end
end
