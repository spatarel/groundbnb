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

ActiveRecord::Schema[8.1].define(version: 2017_11_01_175301) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "apartments", id: :serial, force: :cascade do |t|
    t.integer "city_id"
    t.decimal "latitude"
    t.decimal "longitude"
    t.boolean "is_private"
    t.integer "guests"
    t.decimal "bedrooms"
    t.integer "beds"
    t.decimal "baths"
  end

  create_table "apartments_facilities", id: :serial, force: :cascade do |t|
    t.integer "apartment_id"
    t.integer "facility_id"
  end

  create_table "cities", id: :serial, force: :cascade do |t|
    t.string "name"
    t.decimal "center_latitude"
    t.decimal "center_longitude"
    t.string "currency"
  end

  create_table "facilities", id: :serial, force: :cascade do |t|
    t.string "name"
  end

  create_table "prices", id: :serial, force: :cascade do |t|
    t.boolean "was_rented"
    t.decimal "price"
    t.date "day"
    t.integer "apartment_id"
  end

  add_foreign_key "apartments", "cities"
  add_foreign_key "apartments_facilities", "apartments"
  add_foreign_key "apartments_facilities", "facilities"
  add_foreign_key "prices", "apartments"
end
