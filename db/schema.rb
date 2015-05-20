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

ActiveRecord::Schema.define(version: 20131023214343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.string  "name"
    t.boolean "hidden", default: false
  end

  create_table "constants", force: :cascade do |t|
    t.string  "name"
    t.string  "url"
    t.integer "api_id"
  end

  add_index "constants", ["api_id"], name: "index_constants_on_api_id", using: :btree

  create_table "entries", force: :cascade do |t|
    t.string  "name"
    t.string  "url"
    t.integer "constant_id"
  end

  add_index "entries", ["constant_id"], name: "index_entries_on_constant_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.string   "text"
    t.integer  "channel_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.string   "type"
    t.boolean  "hidden",     default: true
  end

  create_table "people", force: :cascade do |t|
    t.string   "nick"
    t.boolean  "authorized", default: false
    t.datetime "created_at"
  end

  create_table "tips", force: :cascade do |t|
    t.string "command"
    t.text   "text"
  end

end
