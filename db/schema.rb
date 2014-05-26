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

ActiveRecord::Schema.define(version: 20140523111915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: true do |t|
    t.integer  "task_id"
    t.integer  "member_id"
    t.text     "signature"
    t.date     "completion_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "achievements", ["member_id"], name: "index_achievements_on_member_id", using: :btree
  add_index "achievements", ["task_id"], name: "index_achievements_on_task_id", using: :btree

  create_table "activities", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order"
    t.boolean  "required",    default: true, null: false
    t.integer  "requirement", default: 0,    null: false
  end

  add_index "activities", ["section_id"], name: "index_activities_on_section_id", using: :btree

  create_table "activities_awards", force: true do |t|
    t.integer "award_id"
    t.integer "activity_id"
  end

  add_index "activities_awards", ["activity_id"], name: "index_activities_awards_on_activity_id", using: :btree
  add_index "activities_awards", ["award_id"], name: "index_activities_awards_on_award_id", using: :btree

  create_table "awards", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "requirement",     default: 0, null: false
    t.integer  "prerequisite_id"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "registration_number"
    t.date     "date_birth"
    t.integer  "troop_id"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["section_id"], name: "index_members_on_section_id", using: :btree
  add_index "members", ["troop_id"], name: "index_members_on_troop_id", using: :btree

  create_table "sections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.text     "description"
    t.integer  "order"
    t.integer  "activity_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "required",    default: true, null: false
  end

  add_index "tasks", ["activity_id"], name: "index_tasks_on_activity_id", using: :btree
  add_index "tasks", ["task_id"], name: "index_tasks_on_task_id", using: :btree

  create_table "troops", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
