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

ActiveRecord::Schema.define(version: 2018_07_26_234443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sensors", force: :cascade do |t|
    t.string "name"
    t.string "serial"
    t.bigint "valve_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_sensors_on_user_id"
    t.index ["valve_id"], name: "index_sensors_on_valve_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "valves", force: :cascade do |t|
    t.string "name"
    t.string "serial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_valves_on_user_id"
  end

  add_foreign_key "sensors", "users"
  add_foreign_key "sensors", "valves", column: "valve_id"
  add_foreign_key "valves", "users"
end
