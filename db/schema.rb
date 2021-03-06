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

ActiveRecord::Schema.define(version: 20170820142419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "second_last_name"
    t.string "first_last_name"
    t.date "birth_date"
    t.string "curp"
    t.string "rfc"
    t.string "gender"
    t.string "birth_state"
    t.string "phone_number"
    t.string "email"
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_profiles_on_email", unique: true
    t.index ["reset_password_token"], name: "index_profiles_on_reset_password_token", unique: true
  end

  create_table "references", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "first_last_name"
    t.string "second_last_name"
    t.string "cell_phone_number"
    t.bigint "requisition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requisition_id"], name: "index_references_on_requisition_id"
  end

  create_table "requisitions", force: :cascade do |t|
    t.decimal "income"
    t.integer "address_years"
    t.integer "company_years"
    t.string "marital_status"
    t.decimal "requested_amount"
    t.string "payment_terms"
    t.string "bank"
    t.string "comment"
    t.string "company_name"
    t.string "company_phone_number"
    t.integer "dependents_number"
    t.string "company_position"
    t.boolean "has_sgmm"
    t.boolean "has_imss"
    t.boolean "has_car"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "profile_id"
  end

  add_foreign_key "references", "requisitions"
  add_foreign_key "requisitions", "profiles"
end
