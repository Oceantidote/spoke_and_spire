# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_17_124041) do

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "banners", force: :cascade do |t|
    t.string "slide_one_title"
    t.string "slide_one_image_alt_text"
    t.string "slide_two_title"
    t.string "slide_two_image_alt_text"
    t.string "slide_three_title"
    t.string "slide_three_image_alt_text"
    t.string "card_one_title"
    t.string "card_one_image_alt_text"
    t.string "card_two_title"
    t.string "card_two_image_alt_text"
    t.string "card_three_title"
    t.string "card_three_image_alt_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "slide_one_id"
    t.bigint "slide_two_id"
    t.bigint "slide_three_id"
    t.bigint "card_one_id"
    t.bigint "card_two_id"
    t.bigint "card_three_id"
    t.bigint "slide_four_id"
    t.string "slide_four_title"
    t.string "bar_week"
    t.string "bar_wknd"
    t.string "kitch_wk_wraps"
    t.string "kitch_wk_panini"
    t.string "kitch_wk_pizza"
    t.string "kitch_wknd_pizza"
    t.index ["card_one_id"], name: "index_banners_on_card_one_id"
    t.index ["card_three_id"], name: "index_banners_on_card_three_id"
    t.index ["card_two_id"], name: "index_banners_on_card_two_id"
    t.index ["slide_four_id"], name: "index_banners_on_slide_four_id"
    t.index ["slide_one_id"], name: "index_banners_on_slide_one_id"
    t.index ["slide_three_id"], name: "index_banners_on_slide_three_id"
    t.index ["slide_two_id"], name: "index_banners_on_slide_two_id"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "title"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_events_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "menus", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.datetime "last_used"
    t.boolean "today", default: false
    t.string "slug"
    t.index ["slug"], name: "index_menus_on_slug", unique: true
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.string "alt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_photos_on_slug", unique: true
  end

  create_table "promotions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "featured", default: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "banners", "photos", column: "card_one_id"
  add_foreign_key "banners", "photos", column: "card_three_id"
  add_foreign_key "banners", "photos", column: "card_two_id"
  add_foreign_key "banners", "photos", column: "slide_four_id"
  add_foreign_key "banners", "photos", column: "slide_one_id"
  add_foreign_key "banners", "photos", column: "slide_three_id"
  add_foreign_key "banners", "photos", column: "slide_two_id"
end
