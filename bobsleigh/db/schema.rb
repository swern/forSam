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

ActiveRecord::Schema.define(version: 20160913125455) do

  create_table "athletes", force: :cascade do |t|
    t.string   "name"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "athletes", ["team_id"], name: "index_athletes_on_team_id"

  create_table "sponsors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsorships", force: :cascade do |t|
    t.integer  "athlete_id"
    t.integer  "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sponsorships", ["athlete_id"], name: "index_sponsorships_on_athlete_id"
  add_index "sponsorships", ["sponsor_id"], name: "index_sponsorships_on_sponsor_id"

  create_table "teams", force: :cascade do |t|
    t.string   "nation"
    t.integer  "size"
    t.integer  "medals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
