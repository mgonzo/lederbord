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

ActiveRecord::Schema.define(version: 20150530233759) do

  create_table "groups", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,   null: false
    t.string   "groupname",  limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "groups", ["user_id"], name: "fk_rails_5e78cd340a", using: :btree

  create_table "images", force: :cascade do |t|
    t.integer  "user_id",     limit: 4,   null: false
    t.integer  "group_id",    limit: 4,   null: false
    t.string   "title",       limit: 255, null: false
    t.string   "resource_id", limit: 255, null: false
    t.string   "phash",       limit: 255, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "images", ["group_id"], name: "fk_rails_a71674751c", using: :btree
  add_index "images", ["user_id"], name: "fk_rails_19cd822056", using: :btree

  create_table "members", force: :cascade do |t|
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "group_id",   limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "members", ["group_id"], name: "fk_rails_298a39267f", using: :btree
  add_index "members", ["user_id"], name: "fk_rails_2e88fb7ce9", using: :btree

  create_table "ratings", force: :cascade do |t|
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "group_id",   limit: 4, null: false
    t.integer  "image_id",   limit: 4, null: false
    t.integer  "value",      limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "ratings", ["group_id"], name: "fk_rails_81b28d3e88", using: :btree
  add_index "ratings", ["image_id"], name: "fk_rails_802d63408d", using: :btree
  add_index "ratings", ["user_id"], name: "fk_rails_a7dfeb9f5f", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "username",               limit: 255
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "groups", "users"
  add_foreign_key "images", "groups"
  add_foreign_key "images", "users"
  add_foreign_key "members", "groups"
  add_foreign_key "members", "users"
  add_foreign_key "ratings", "groups"
  add_foreign_key "ratings", "images"
  add_foreign_key "ratings", "users"
end
