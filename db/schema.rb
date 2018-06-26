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

ActiveRecord::Schema.define(version: 20180626151415) do

  create_table "comments", force: :cascade do |t|
    t.integer  "doctor_id"
    t.text     "comment_body"
    t.integer  "rating"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["doctor_id"], name: "index_comments_on_doctor_id"
  end

  create_table "doctor_specialties", force: :cascade do |t|
    t.integer  "specialty_id_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["specialty_id_id"], name: "index_doctor_specialties_on_specialty_id_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "comments"
    t.integer  "doctors"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
