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

ActiveRecord::Schema.define(version: 2021_02_08_121315) do

  create_table "cases", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "type"
    t.string "color"
    t.string "power_supply"
    t.string "side_panel_window"
    t.integer "external_bays"
    t.integer "internal_bays"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memories", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "speed"
    t.integer "size"
    t.string "color"
    t.integer "cas_latency"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "motherboards", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "socket"
    t.string "form_factor"
    t.integer "memory_max"
    t.integer "memory_slots"
    t.string "color"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "power_supplies", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "form_factor"
    t.string "efficiency_rating"
    t.integer "wattage"
    t.string "modular"
    t.string "color"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "processor_coolers", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.integer "fan_rpm"
    t.integer "noise_level"
    t.string "color"
    t.integer "radiator_size"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "processors", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.integer "core_count"
    t.float "core_clock"
    t.float "boost_clock"
    t.integer "tdp"
    t.string "integrated_graphics"
    t.string "smt"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "storages", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.integer "capacity"
    t.string "type"
    t.integer "cache"
    t.string "form_factor"
    t.string "interface"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "video_cards", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "chipset"
    t.integer "memory"
    t.integer "core_clock"
    t.integer "boost_clock"
    t.string "color"
    t.integer "length"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
