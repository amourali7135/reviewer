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

ActiveRecord::Schema.define(version: 2021_07_02_204419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

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
    t.boolean "claimed", default: false
    t.text "about"
    t.date "founded"
    t.string "website"
    t.string "instagram"
    t.string "facebook"
    t.text "health_safety"
    t.text "highlights"
    t.text "accessibility"
    t.text "amenities"
    t.text "payments"
    t.boolean "parking", default: false
    t.boolean "influencer_hub", default: false
    t.boolean "local_favorite", default: false
    t.boolean "restaurant", default: false
    t.text "delivery_options"
    t.boolean "alcohol", default: false
    t.boolean "takeout", default: false
    t.boolean "vegan_vegetarian_friendly", default: false
    t.boolean "gluten_free_friendly", default: false
    t.boolean "pet_friendly", default: false
    t.boolean "delivery", default: false
    t.boolean "kid_friendly", default: false
    t.boolean "scenic", default: false
    t.text "service_options"
    t.string "logo"
    t.text "history"
    t.text "intro"
    t.text "specialties"
    t.boolean "reservations", default: false
    t.boolean "verified", default: false
    t.boolean "permanently_closed", default: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_chatrooms_on_user_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.text "advice"
    t.boolean "proof"
    t.date "date_interacted"
    t.bigint "business_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_feedbacks_on_business_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "interactionverifications", force: :cascade do |t|
    t.bigint "business_id", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_interactionverifications_on_business_id"
    t.index ["user_id"], name: "index_interactionverifications_on_user_id"
  end

  create_table "logos", force: :cascade do |t|
    t.bigint "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_logos_on_business_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
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
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_perks_on_business_id"
    t.index ["service_id"], name: "index_perks_on_service_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "price_cents"
    t.text "offerings"
    t.date "completion"
    t.string "time_taken"
    t.bigint "business_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_projects_on_business_id"
    t.index ["service_id"], name: "index_projects_on_service_id"
  end

  create_table "recommendationslists", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.string "city"
    t.text "descriptions"
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
    t.integer "business_rating"
    t.text "business_review"
    t.integer "useful"
    t.integer "funny"
    t.integer "cool"
    t.integer "questionable"
    t.integer "service"
    t.integer "value"
    t.integer "atmosphere"
    t.boolean "service_review_too", default: false
    t.integer "service_rating"
    t.text "service_review"
    t.boolean "proof", default: false
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
    t.boolean "food", default: false
    t.bigint "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_services_on_business_id"
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
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
    t.string "reputation"
    t.string "city"
    t.string "username"
    t.text "bio"
    t.integer "level"
    t.string "first_name"
    t.string "last_name"
    t.boolean "superadmin_role", default: false
    t.boolean "business_owner_role", default: false
    t.boolean "normal_user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "verificationqrs", force: :cascade do |t|
    t.bigint "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_verificationqrs_on_business_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "businesses", "users"
  add_foreign_key "chatrooms", "users"
  add_foreign_key "feedbacks", "businesses"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "interactionverifications", "businesses"
  add_foreign_key "interactionverifications", "users"
  add_foreign_key "logos", "businesses"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "ownerverificationrequests", "businesses"
  add_foreign_key "ownerverificationrequests", "users"
  add_foreign_key "perks", "businesses"
  add_foreign_key "perks", "services"
  add_foreign_key "projects", "businesses"
  add_foreign_key "projects", "services"
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
  add_foreign_key "taggings", "tags"
  add_foreign_key "userqrs", "businesses"
  add_foreign_key "userqrs", "feedbacks"
  add_foreign_key "userqrs", "reviews"
  add_foreign_key "userqrs", "users"
  add_foreign_key "verificationqrs", "businesses"
end
