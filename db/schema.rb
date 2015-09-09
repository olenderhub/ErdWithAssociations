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

ActiveRecord::Schema.define(version: 20150909000308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.integer  "phone_number"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies_employees", force: :cascade do |t|
    t.integer "company_id"
    t.integer "employee_id"
  end

  add_index "companies_employees", ["company_id"], name: "index_companies_employees_on_company_id", using: :btree
  add_index "companies_employees", ["employee_id"], name: "index_companies_employees_on_employee_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_histories", force: :cascade do |t|
    t.integer  "credit_rating"
    t.integer  "payment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "payment_histories", ["payment_id"], name: "index_payment_histories_on_payment_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.string   "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
  end

  add_index "payments", ["client_id"], name: "index_payments_on_client_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "pictures", ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.string   "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "player_id"
  end

  add_index "sports", ["player_id"], name: "index_sports_on_player_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "mark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "teacher_id"
    t.integer  "student_id"
  end

  add_index "subjects", ["student_id"], name: "index_subjects_on_student_id", using: :btree
  add_index "subjects", ["teacher_id"], name: "index_subjects_on_teacher_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "companies_employees", "companies"
  add_foreign_key "companies_employees", "employees"
  add_foreign_key "payment_histories", "payments"
  add_foreign_key "payments", "clients"
  add_foreign_key "sports", "players"
  add_foreign_key "subjects", "students"
  add_foreign_key "subjects", "teachers"
end
