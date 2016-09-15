# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160915033715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_bookings_on_listing_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "house_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_house_images_on_listing_id", using: :btree
  end

  create_table "listings", force: :cascade do |t|
    t.text     "address"
    t.text     "date"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longitude"
    t.index ["user_id"], name: "index_listings_on_user_id", using: :btree
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.integer  "age"
    t.text     "describe"
    t.integer  "listing_id"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_pets_on_listing_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.text     "password_digest"
    t.string   "avatar"
    t.string   "gender"
    t.string   "birthdate"
    t.string   "location"
    t.text     "about"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "bookings", "listings"
  add_foreign_key "bookings", "users"
  add_foreign_key "house_images", "listings"
  add_foreign_key "listings", "users"
  add_foreign_key "pets", "listings"
end
