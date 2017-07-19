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

ActiveRecord::Schema.define(version: 20170719223435) do

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

  create_table "reservations", force: :cascade do |t|
    t.string   "booking_code"
    t.integer  "train_id"
    t.string   "seat_number"
    t.integer  "user_id"
    t.string   "customer_name"
    t.string   "customer_phone"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["booking_code"], name: "index_reservations_on_booking_code"
    t.index ["seat_number"], name: "index_reservations_on_seat_number"
    t.index ["train_id"], name: "index_reservations_on_train_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["number"], name: "index_trains_on_number"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "authentication_token"
    t.string   "avatar"
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
