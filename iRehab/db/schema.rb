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

ActiveRecord::Schema.define(version: 20160418204724) do

  create_table "faqs", force: :cascade do |t|
    t.string "question", limit: 1000
    t.string "answer",   limit: 1000
  end

  create_table "forums", force: :cascade do |t|
    t.string   "username",      limit: 10,   null: false
    t.string   "doctor",        limit: 10
    t.string   "user_question", limit: 1000, null: false
    t.string   "doc_answer",    limit: 1000
    t.datetime "question_time"
    t.datetime "answer_time"
  end

  create_table "records", force: :cascade do |t|
    t.string "username",         limit: 10,   null: false
    t.string "appointment_date",              null: false
    t.string "appointment_time",              null: false
    t.string "advisor",          limit: 20,   null: false
    t.string "description",      limit: 1000
    t.string "instruction",      limit: 1000
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",    limit: 10,               null: false
    t.string   "password",    limit: 20,               null: false
    t.string   "email",                                null: false
    t.string   "gender",                 default: "M"
    t.string   "addressline",            default: ""
    t.string   "city",                   default: ""
    t.string   "state",                  default: ""
    t.string   "zipcode",                default: ""
    t.string   "firstname",                            null: false
    t.string   "lastname",                             null: false
    t.string   "dateofbirth"
    t.string   "phone",       limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
