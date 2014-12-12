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

ActiveRecord::Schema.define(version: 20141114053819) do

  create_table "meetings", force: true do |t|
    t.string   "title"
    t.integer  "venue_id"
    t.integer  "organiser_id"
    t.text     "description"
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meetings", ["organiser_id"], name: "index_meetings_on_organiser_id", using: :btree
  add_index "meetings", ["venue_id"], name: "index_meetings_on_venue_id", using: :btree

  create_table "organisers", force: true do |t|
    t.string   "name"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "room"
    t.string   "location_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
