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

ActiveRecord::Schema.define(version: 2021_05_24_172712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mechanics", force: :cascade do |t|
    t.string "name"
    t.integer "years_experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.float "admission_price"
  end

  create_table "rides", force: :cascade do |t|
    t.string "name"
    t.integer "thrill_rating"
    t.boolean "open"
    t.bigint "mechanic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "park_id"
    t.index ["mechanic_id"], name: "index_rides_on_mechanic_id"
    t.index ["park_id"], name: "index_rides_on_park_id"
  end

  add_foreign_key "rides", "mechanics"
  add_foreign_key "rides", "parks"
end
