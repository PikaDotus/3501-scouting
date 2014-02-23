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

ActiveRecord::Schema.define(version: 20140223192359) do

  create_table "matches", force: true do |t|
    t.integer  "team_number"
    t.integer  "red_1"
    t.integer  "red_2"
    t.integer  "red_3"
    t.integer  "blue_1"
    t.integer  "blue_2"
    t.integer  "blue_3"
    t.integer  "final_score"
    t.string   "scouter_email"
    t.integer  "top_made_tele"
    t.integer  "top_missed_tele"
    t.integer  "low_made_tele"
    t.boolean  "hot_auton"
    t.boolean  "drive_auton"
    t.integer  "top_made_auton"
    t.integer  "top_missed_auton"
    t.integer  "low_made_auton"
    t.integer  "low_missed_auton"
    t.integer  "catch_made"
    t.integer  "catch_missed"
    t.integer  "truss_made"
    t.integer  "truss_missed"
    t.integer  "static_pickup"
    t.integer  "moving_pickup"
    t.integer  "attempted_passes"
    t.integer  "accurate_passes"
    t.integer  "attempted_receptions"
    t.integer  "good_receptions"
    t.integer  "pass_type"
    t.integer  "receive_type"
    t.integer  "ball_control_type"
    t.integer  "human_player_skill"
    t.integer  "goalie_blocked"
    t.integer  "goalie_failed"
    t.integer  "goalie_block_area"
    t.integer  "cims"
    t.boolean  "pure_defense"
    t.integer  "def_passes_interrupted"
    t.integer  "def_time_drain"
    t.integer  "speed"
    t.integer  "driver_skill"
    t.integer  "drive_train_type"
    t.integer  "team_compromise"
    t.integer  "team_follow"
    t.integer  "team_cooperate"
    t.integer  "when_not_offense"
    t.boolean  "no_show"
    t.boolean  "dead"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.string   "content"
    t.integer  "votes"
    t.integer  "match_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notes", ["match_id", "votes"], name: "index_notes_on_match_id_and_votes"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
