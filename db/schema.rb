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

ActiveRecord::Schema.define(version: 20150518181924) do

  create_table "classrooms", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.integer  "teacher_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "classrooms", ["teacher_id"], name: "index_classrooms_on_teacher_id"

  create_table "drill_types", force: :cascade do |t|
    t.string   "name",               limit: 255, null: false
    t.string   "required_frequency", limit: 255, null: false
    t.integer  "classroom_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "drill_types", ["classroom_id"], name: "index_drill_types_on_classroom_id"

  create_table "drills", force: :cascade do |t|
    t.date     "date_performed", null: false
    t.integer  "teacher_id"
    t.integer  "classroom_id"
    t.integer  "drill_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "drills", ["classroom_id"], name: "index_drills_on_classroom_id"
  add_index "drills", ["drill_type_id"], name: "index_drills_on_drill_type_id"
  add_index "drills", ["teacher_id"], name: "index_drills_on_teacher_id"

  create_table "teachers", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
