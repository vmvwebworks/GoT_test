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

ActiveRecord::Schema.define(version: 20180212171405) do

  create_table "characters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "house_id"
    t.text     "description",         limit: 65535
    t.text     "biography",           limit: 65535
    t.string   "personality"
    t.string   "titles"
    t.string   "status"
    t.string   "death"
    t.string   "origin"
    t.string   "allegiance"
    t.string   "religion"
    t.string   "predecessor"
    t.string   "successor"
    t.string   "father"
    t.string   "mother"
    t.string   "spouse"
    t.string   "children"
    t.string   "siblings"
    t.string   "lovers"
    t.string   "culture"
    t.boolean  "appears_in_season_1"
    t.boolean  "appears_in_season_2"
    t.boolean  "appears_in_season_3"
    t.boolean  "appears_in_season_4"
    t.boolean  "appears_in_season_5"
    t.boolean  "appears_in_season_6"
    t.boolean  "appears_in_season_7"
    t.boolean  "appears_in_season_8"
    t.boolean  "appears_in_season_9"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "seasons"
    t.index ["house_id"], name: "index_characters_on_house_id", using: :btree
  end

  create_table "houses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "description"
    t.string   "background"
    t.string   "words"
    t.string   "seat"
    t.string   "region"
    t.string   "lord"
    t.string   "religion"
    t.string   "sigil_url"
    t.string   "sigil"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "source"
    t.string   "caption"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "character_id"
  end

  add_foreign_key "characters", "houses"
end
