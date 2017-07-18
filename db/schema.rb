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

ActiveRecord::Schema.define(version: 20170718144344) do

  create_table "cities", force: :cascade do |t|
    t.string   "juhe_id"
    t.string   "province"
    t.string   "city"
    t.string   "district"
    t.string   "current_temp"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["juhe_id"], name: "index_cities_on_juhe_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string   "juhe_name"
    t.string   "city"
    t.string   "address"
    t.string   "phone"
    t.string   "tags"
    t.string   "avg_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["juhe_name"], name: "index_foods_on_juhe_name"
  end

  create_table "oil_cities", force: :cascade do |t|
    t.string   "juhe_city"
    t.string   "b90"
    t.string   "b93"
    t.string   "b97"
    t.string   "b0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["juhe_city"], name: "index_oil_cities_on_juhe_city"
  end

  create_table "oils", force: :cascade do |t|
    t.string   "juhe_city"
    t.string   "b90"
    t.string   "b93"
    t.string   "b97"
    t.string   "b0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["juhe_city"], name: "index_oils_on_juhe_city"
  end

end
