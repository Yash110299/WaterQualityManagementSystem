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

ActiveRecord::Schema.define(version: 2020_02_22_065746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nodes", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "readings", force: :cascade do |t|
    t.datetime "date"
    t.float "dissolved_oxygen"
    t.float "turbidity"
    t.float "ph"
    t.float "temprature"
    t.float "flow"
    t.bigint "node_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["node_id"], name: "index_readings_on_node_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
