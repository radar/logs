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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120901105023) do

  create_table "channels", :force => true do |t|
    t.string  "name"
    t.boolean "hidden", :default => false
  end

  create_table "constants", :force => true do |t|
    t.string  "name"
    t.string  "url"
    t.integer "api_id"
  end

  add_index "constants", ["api_id"], :name => "index_constants_on_api_id"

  create_table "entries", :force => true do |t|
    t.string  "name"
    t.string  "url"
    t.integer "constant_id"
  end

  add_index "entries", ["constant_id"], :name => "index_entries_on_constant_id"

  create_table "messages", :force => true do |t|
    t.string   "text"
    t.integer  "channel_id"
    t.integer  "person_id"
    t.datetime "created_at"
  end

  create_table "people", :force => true do |t|
    t.string  "nick"
    t.boolean "authorized", :default => false
  end

  create_table "tips", :force => true do |t|
    t.string "command"
    t.text   "text"
  end

end
