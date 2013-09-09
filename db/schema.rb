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

ActiveRecord::Schema.define(version: 20130825103202) do

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "game_styles", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_styles_games", force: true do |t|
  end

  create_table "games", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_to_game_styles", force: true do |t|
    t.integer  "group_id"
    t.integer  "game_style_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_to_game_styles", ["group_id", "game_style_id"], name: "index_group_to_game_styles_on_group_id_and_game_style_id"

  create_table "groups", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "campagne"
    t.integer  "gamemaster_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "game_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "groups", ["title"], name: "index_groups_on_title"

  create_table "groups_profiles", force: true do |t|
  end

  create_table "memberships", force: true do |t|
    t.integer "profile_id"
    t.integer "group_id"
  end

  create_table "news", force: true do |t|
    t.string   "headline"
    t.text     "content"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_items", force: true do |t|
    t.string   "headline"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  create_table "personal_messages", force: true do |t|
    t.text     "content"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "plz"
    t.integer  "age"
    t.string   "address"
    t.text     "bio"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
