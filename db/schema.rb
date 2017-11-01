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

ActiveRecord::Schema.define(version: 20171101165353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.integer "city_id"
    t.decimal "latitude"
    t.decimal "longitude"
    t.boolean "is_private"
    t.integer "guests"
    t.decimal "bedrooms"
    t.integer "beds"
    t.decimal "baths"
  end

  create_table "apartments_facilities", force: :cascade do |t|
    t.integer "apartment_id"
    t.integer "facility_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string  "name"
    t.decimal "center_latitude"
    t.decimal "center_longitude"
    t.string  "currency"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "apartments", "cities"
  add_foreign_key "apartments_facilities", "apartments"
  add_foreign_key "apartments_facilities", "facilities"
end
