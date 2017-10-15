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

ActiveRecord::Schema.define(version: 20171008080741) do

  create_table "analytes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "program_id"
    t.integer "reagent_list_id"
    t.integer "unit_list_id"
    t.integer "mode_list_id"
    t.integer "data_list_id"
    t.index ["data_list_id"], name: "index_analytes_on_data_list_id"
    t.index ["mode_list_id"], name: "index_analytes_on_mode_list_id"
    t.index ["program_id"], name: "index_analytes_on_program_id"
    t.index ["reagent_list_id"], name: "index_analytes_on_reagent_list_id"
    t.index ["unit_list_id"], name: "index_analytes_on_unit_list_id"
  end

  create_table "data", force: :cascade do |t|
    t.integer "value"
    t.boolean "is_str"
    t.integer "user_id"
    t.integer "term_id"
    t.integer "program_id"
    t.integer "analyte_id"
    t.integer "unit_id"
    t.integer "mode_id"
    t.integer "reagent_id"
    t.integer "data_list_line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["analyte_id"], name: "index_data_on_analyte_id"
    t.index ["data_list_line_id"], name: "index_data_on_data_list_line_id"
    t.index ["mode_id"], name: "index_data_on_mode_id"
    t.index ["program_id"], name: "index_data_on_program_id"
    t.index ["reagent_id"], name: "index_data_on_reagent_id"
    t.index ["term_id"], name: "index_data_on_term_id"
    t.index ["unit_id"], name: "index_data_on_unit_id"
    t.index ["user_id"], name: "index_data_on_user_id"
  end

  create_table "data_list_lines", force: :cascade do |t|
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "data_list_id"
    t.index ["data_list_id"], name: "index_data_list_lines_on_data_list_id"
  end

  create_table "data_lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mode_list_lines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mode_list_id"
    t.index ["mode_list_id"], name: "index_mode_list_lines_on_mode_list_id"
  end

  create_table "mode_lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mode_list_line_id"
    t.index ["mode_list_line_id"], name: "index_modes_on_mode_list_line_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reagent_list_lines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reagent_lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reagent_list_id"
    t.index ["reagent_list_id"], name: "index_reagent_lists_on_reagent_list_id"
  end

  create_table "reagents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reagent_list_line_id"
    t.index ["reagent_list_line_id"], name: "index_reagents_on_reagent_list_line_id"
  end

  create_table "terms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unit_list_lines", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "unit_list_id"
    t.index ["unit_list_id"], name: "index_unit_list_lines_on_unit_list_id"
  end

  create_table "unit_lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "unit_list_line_id"
    t.index ["unit_list_line_id"], name: "index_units_on_unit_list_line_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "mgr"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "veris", force: :cascade do |t|
    t.integer "value"
    t.boolean "is_str"
    t.integer "user_id"
    t.integer "term_id"
    t.integer "program_id"
    t.integer "analyte_id"
    t.integer "unit_id"
    t.integer "mode_id"
    t.integer "reagent_id"
    t.integer "data_list_line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["analyte_id"], name: "index_veris_on_analyte_id"
    t.index ["data_list_line_id"], name: "index_veris_on_data_list_line_id"
    t.index ["mode_id"], name: "index_veris_on_mode_id"
    t.index ["program_id"], name: "index_veris_on_program_id"
    t.index ["reagent_id"], name: "index_veris_on_reagent_id"
    t.index ["term_id"], name: "index_veris_on_term_id"
    t.index ["unit_id"], name: "index_veris_on_unit_id"
    t.index ["user_id"], name: "index_veris_on_user_id"
  end

end
