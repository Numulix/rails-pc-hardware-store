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

ActiveRecord::Schema.define(version: 2021_02_10_213610) do

  create_table "builds", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "processor_id"
    t.integer "pc_case_id"
    t.integer "processor_cooler_id"
    t.integer "video_card_id"
    t.integer "memory_id"
    t.integer "storage_id"
    t.integer "motherboard_id"
    t.integer "power_supply_id"
    t.index ["memory_id"], name: "index_builds_on_memory_id"
    t.index ["motherboard_id"], name: "index_builds_on_motherboard_id"
    t.index ["pc_case_id"], name: "index_builds_on_pc_case_id"
    t.index ["power_supply_id"], name: "index_builds_on_power_supply_id"
    t.index ["processor_cooler_id"], name: "index_builds_on_processor_cooler_id"
    t.index ["processor_id"], name: "index_builds_on_processor_id"
    t.index ["storage_id"], name: "index_builds_on_storage_id"
    t.index ["video_card_id"], name: "index_builds_on_video_card_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "description"
    t.integer "user_id"
    t.integer "build_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["build_id"], name: "index_comments_on_build_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
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

  create_table "pc_cases", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "case_type"
    t.string "color"
    t.string "power_supply"
    t.string "side_panel_window"
    t.integer "external_bays"
    t.integer "internal_bays"
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
    t.string "storage_type"
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
    t.boolean "admin", default: false
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

  add_foreign_key "builds", "memories"
  add_foreign_key "builds", "motherboards"
  add_foreign_key "builds", "pc_cases"
  add_foreign_key "builds", "power_supplies"
  add_foreign_key "builds", "processor_coolers"
  add_foreign_key "builds", "processors"
  add_foreign_key "builds", "storages"
  add_foreign_key "builds", "users"
  add_foreign_key "builds", "video_cards"
end
