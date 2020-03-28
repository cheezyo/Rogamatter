# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_28_134950) do

  create_table "comments", force: :cascade do |t|
    t.string "klass"
    t.integer "klass_id"
    t.text "comment"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "street"
    t.integer "post_code"
    t.string "city"
    t.integer "phone_number"
    t.string "contact_person"
    t.integer "phone_number_contact_person"
    t.integer "org_nr"
    t.string "email"
    t.string "contact_person_email"
  end

  create_table "company_mats", force: :cascade do |t|
    t.integer "change"
    t.string "change_day"
    t.date "start_date"
    t.date "end_date"
    t.integer "company_id"
    t.integer "mat_id"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "klass"
    t.integer "klass_id"
    t.date "pack_date"
    t.date "delivery"
    t.datetime "delivered_date"
    t.integer "change_amount"
    t.boolean "notify"
    t.integer "commet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "delivered"
    t.integer "company_id"
  end

  create_table "mat_inventories", force: :cascade do |t|
    t.integer "company_mat_id"
    t.integer "mat_id"
    t.integer "sold"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mats", force: :cascade do |t|
    t.string "mat_type"
    t.string "mat_size"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "inventory"
    t.integer "sold"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_hash"
  end

end
