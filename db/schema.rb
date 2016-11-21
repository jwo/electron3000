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

ActiveRecord::Schema.define(version: 20161120200726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ballots", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "state"
    t.string   "phone_number"
    t.integer  "first_place_side_id"
    t.integer  "second_place_side_id"
    t.integer  "third_place_side_id"
    t.integer  "first_place_dessert_id"
    t.integer  "second_place_dessert_id"
    t.integer  "third_place_dessert_id"
    t.string   "token"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["event_id"], name: "index_ballots_on_event_id", using: :btree
  end

  create_table "entries", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "category"
    t.string   "name"
    t.string   "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_entries_on_event_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
