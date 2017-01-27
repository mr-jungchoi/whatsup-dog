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

ActiveRecord::Schema.define(version: 20170126042424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approvals", force: :cascade do |t|
    t.integer  "approved_dog_id"
    t.integer  "approving_dog_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["approved_dog_id"], name: "index_approvals_on_approved_dog_id", using: :btree
    t.index ["approving_dog_id"], name: "index_approvals_on_approving_dog_id", using: :btree
  end

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.integer  "sex"
    t.integer  "age"
    t.integer  "size"
    t.string   "breed"
    t.text     "bio"
    t.string   "avatar"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_dogs_on_user_id", using: :btree
  end

  create_table "parks", force: :cascade do |t|
    t.string   "name"
    t.string   "google_locations_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fullname"
    t.string   "email"
    t.string   "password"
    t.text     "bio"
    t.string   "avatar"
    t.integer  "park_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["park_id"], name: "index_users_on_park_id", using: :btree
  end

  create_table "walks", force: :cascade do |t|
    t.datetime "scheduled_date"
    t.integer  "dog_id"
    t.integer  "other_dog_id"
    t.integer  "park_id"
    t.index ["dog_id"], name: "index_walks_on_dog_id", using: :btree
    t.index ["other_dog_id"], name: "index_walks_on_other_dog_id", using: :btree
    t.index ["park_id"], name: "index_walks_on_park_id", using: :btree
  end

  add_foreign_key "dogs", "users"
  add_foreign_key "users", "parks"
  add_foreign_key "walks", "parks"
end
