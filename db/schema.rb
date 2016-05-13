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

ActiveRecord::Schema.define(version: 20150727230330) do

  create_table "contacts", force: :cascade do |t|
    t.string  "urcontactname", limit: 50
    t.string  "contactname",   limit: 50
    t.string  "contact",       limit: 50
    t.integer "teacher_id"
  end

  add_index "contacts", ["teacher_id"], name: "index_contacts_on_teacher_id"

  create_table "courses", force: :cascade do |t|
    t.integer "teacher_id"
    t.string  "coursename"
    t.string  "school"
    t.string  "urcoursename"
    t.string  "urschool"
  end

  add_index "courses", ["teacher_id"], name: "index_courses_on_teacher_id"

  create_table "fees", force: :cascade do |t|
    t.string  "plan",       limit: 50
    t.string  "urplan",     limit: 50
    t.string  "duration",   limit: 50
    t.string  "urduration", limit: 50
    t.integer "feeamount"
  end

  create_table "services", force: :cascade do |t|
    t.string "name",   limit: 120
    t.string "urname", limit: 120
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name",   limit: 50, null: false
    t.string "urname", limit: 50
  end

  create_table "users", force: :cascade do |t|
    t.string "email",              default: "", null: false
    t.string "encrypted_password", default: "", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
