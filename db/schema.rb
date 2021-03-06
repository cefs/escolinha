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

ActiveRecord::Schema.define(:version => 20130304215457) do

  create_table "courses", :force => true do |t|
    t.string   "name",                          :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "students_count", :default => 0
    t.string   "slug"
  end

  add_index "courses", ["slug"], :name => "index_courses_on_slug", :unique => true

  create_table "disciplines", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "disciplines", ["slug"], :name => "index_disciplines_on_slug", :unique => true

  create_table "rooms", :force => true do |t|
    t.integer "discipline_id", :null => false
    t.integer "teacher_id",    :null => false
    t.integer "course_id",     :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "course_id"
    t.string   "slug"
    t.string   "email"
  end

  add_index "students", ["slug"], :name => "index_students_on_slug", :unique => true

  create_table "teachers", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
    t.string   "picture"
  end

  add_index "teachers", ["slug"], :name => "index_teachers_on_slug", :unique => true

end
