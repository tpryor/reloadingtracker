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

ActiveRecord::Schema.define(version: 20151226054035) do

  create_table "calibers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal  "metric"
    t.decimal  "inches"
    t.string   "cal_type"
    t.decimal  "mm"
  end

  create_table "loads", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "caliber",    limit: 255
    t.string   "primer",     limit: 255
    t.string   "bullet",     limit: 255
    t.string   "powder",     limit: 255
    t.decimal  "charge"
    t.decimal  "trim"
    t.decimal  "oal"
    t.decimal  "velocity"
    t.text     "notes"
    t.datetime "load_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "qty"
    t.integer  "caliber_id"
  end

  add_index "loads", ["caliber_id"], name: "index_loads_on_caliber_id"
  add_index "loads", ["user_id"], name: "index_loads_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "provider",               limit: 255,              null: false
    t.string   "uid",                    limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.string   "name",                   limit: 255
    t.string   "nickname",               limit: 255
    t.string   "image",                  limit: 255
    t.string   "email",                  limit: 255
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true

end
