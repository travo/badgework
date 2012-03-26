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

ActiveRecord::Schema.define(:version => 20120326111123) do

  create_table "activities", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "section_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "order"
  end

  add_index "activities", ["section_id"], :name => "index_activities_on_section_id"

  create_table "awards", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "awards_activities", :force => true do |t|
    t.integer "awards_id"
    t.integer "activities_id"
  end

  add_index "awards_activities", ["activities_id"], :name => "index_awards_activities_on_activities_id"
  add_index "awards_activities", ["awards_id"], :name => "index_awards_activities_on_awards_id"

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "registration_number"
    t.date     "date_birth"
    t.integer  "troop_id"
    t.integer  "section_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "members", ["section_id"], :name => "index_members_on_section_id"
  add_index "members", ["troop_id"], :name => "index_members_on_troop_id"

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.integer  "troop_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sections", ["troop_id"], :name => "index_sections_on_troop_id"

  create_table "tasks", :force => true do |t|
    t.text     "description"
    t.integer  "order"
    t.integer  "activity_id"
    t.integer  "task_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tasks", ["activity_id"], :name => "index_tasks_on_activity_id"
  add_index "tasks", ["task_id"], :name => "index_tasks_on_task_id"

  create_table "troops", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
