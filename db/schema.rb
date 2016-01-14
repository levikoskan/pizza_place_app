# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160114150729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pizza_places", force: :cascade do |t|
    t.string   "name",       null: false
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pizza_places", ["city"], name: "index_pizza_places_on_city", using: :btree
  add_index "pizza_places", ["name"], name: "index_pizza_places_on_name", using: :btree
  add_index "pizza_places", ["zip_code"], name: "index_pizza_places_on_zip_code", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string   "title",          null: false
    t.text     "body",           null: false
    t.integer  "pizza_place_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["pizza_place_id"], name: "index_reviews_on_pizza_place_id", using: :btree

end
