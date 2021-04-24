# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_24_195407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "price_range"
    t.string "photo"
    t.boolean "claimed", default: false
    t.text "about"
    t.date "founded"
    t.string "website"
    t.string "instagram"
    t.string "facebook"
    t.text "health_safety"
    t.text "highlights"
    t.text "accessibility"
    t.text "offerings"
    t.text "amenities"
    t.text "payments"
    t.boolean "parking"
    t.boolean "influencer_hub"
    t.boolean "local_favorite"
    t.boolean "restaurant", default: false
    t.text "delivery_options"
    t.boolean "alcohol"
    t.boolean "takeout"
    t.boolean "vegan_vegetarian_friendly"
    t.boolean "gluten_free_friendly"
    t.boolean "pet_friendly"
    t.boolean "delivery"
    t.boolean "kid_friendly"
    t.boolean "scenic"
    t.text "service_options"
    t.boolean "reservations"
    t.boolean "verified", default: false
    t.boolean "permanently_closed", default: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.text "advice"
    t.string "photo"
    t.boolean "proof"
    t.date "date_interacted"
    t.bigint "business_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_feedbacks_on_business_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "ownerverificationrequests", force: :cascade do |t|
    t.text "proof"
    t.bigint "business_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_ownerverificationrequests_on_business_id"
    t.index ["user_id"], name: "index_ownerverificationrequests_on_user_id"
  end

  create_table "perks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "count"
    t.boolean "active", default: true
    t.bigint "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_perks_on_business_id"
  end

  create_table "recommendationslists", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.string "city"
    t.text "descriptions"
    t.string "photo"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "business_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_recommendationslists_on_business_id"
    t.index ["service_id"], name: "index_recommendationslists_on_service_id"
    t.index ["user_id"], name: "index_recommendationslists_on_user_id"
  end

  create_table "redemptions", force: :cascade do |t|
    t.boolean "redeemed", default: false
    t.boolean "locked", default: true
    t.bigint "perk_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["perk_id"], name: "index_redemptions_on_perk_id"
    t.index ["user_id"], name: "index_redemptions_on_user_id"
  end

  create_table "responses", force: :cascade do |t|
    t.text "content"
    t.string "title"
    t.bigint "feedback_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feedback_id"], name: "index_responses_on_feedback_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.text "content"
    t.integer "useful"
    t.integer "funny"
    t.integer "cool"
    t.integer "questionable"
    t.integer "food_rating"
    t.integer "service"
    t.integer "value"
    t.integer "atmosphere"
    t.string "photo"
    t.boolean "proof"
    t.text "followup"
    t.bigint "business_id", null: false
    t.bigint "service_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_reviews_on_business_id"
    t.index ["service_id"], name: "index_reviews_on_service_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.time "opens_at"
    t.time "closes_at"
    t.integer "weekday"
    t.bigint "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_schedules_on_business_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "price_cents"
    t.string "photo"
    t.bigint "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_services_on_business_id"
  end

  create_table "userqrs", force: :cascade do |t|
    t.bigint "feedback_id", null: false
    t.bigint "review_id", null: false
    t.bigint "business_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_userqrs_on_business_id"
    t.index ["feedback_id"], name: "index_userqrs_on_feedback_id"
    t.index ["review_id"], name: "index_userqrs_on_review_id"
    t.index ["user_id"], name: "index_userqrs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "verification_qrs", force: :cascade do |t|
    t.bigint "business_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_verification_qrs_on_business_id"
    t.index ["user_id"], name: "index_verification_qrs_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "businesses", "users"
  add_foreign_key "feedbacks", "businesses"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "ownerverificationrequests", "businesses"
  add_foreign_key "ownerverificationrequests", "users"
  add_foreign_key "perks", "businesses"
  add_foreign_key "recommendationslists", "businesses"
  add_foreign_key "recommendationslists", "services"
  add_foreign_key "recommendationslists", "users"
  add_foreign_key "redemptions", "perks"
  add_foreign_key "redemptions", "users"
  add_foreign_key "responses", "feedbacks"
  add_foreign_key "reviews", "businesses"
  add_foreign_key "reviews", "services"
  add_foreign_key "reviews", "users"
  add_foreign_key "schedules", "businesses"
  add_foreign_key "services", "businesses"
  add_foreign_key "userqrs", "businesses"
  add_foreign_key "userqrs", "feedbacks"
  add_foreign_key "userqrs", "reviews"
  add_foreign_key "userqrs", "users"
  add_foreign_key "verification_qrs", "businesses"
  add_foreign_key "verification_qrs", "users"
end
