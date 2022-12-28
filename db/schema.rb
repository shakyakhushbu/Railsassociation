# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_28_141025) do
  create_table "accounts", force: :cascade do |t|
    t.integer "account_number"
    t.integer "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_accounts_on_users_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "patients_id"
    t.integer "physicians_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patients_id"], name: "index_appointments_on_patients_id"
    t.index ["physicians_id"], name: "index_appointments_on_physicians_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "author_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "book_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author_id"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "patient_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string "physician_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplier_accounts", force: :cascade do |t|
    t.integer "suppliers_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suppliers_id"], name: "index_supplier_accounts_on_suppliers_id"
  end

  create_table "supplier_histories", force: :cascade do |t|
    t.integer "supplier_accounts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_accounts_id"], name: "index_supplier_histories_on_supplier_accounts_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accounts", "users", column: "users_id"
  add_foreign_key "appointments", "patients", column: "patients_id"
  add_foreign_key "appointments", "physicians", column: "physicians_id"
  add_foreign_key "books", "authors"
  add_foreign_key "supplier_accounts", "suppliers", column: "suppliers_id"
  add_foreign_key "supplier_histories", "supplier_accounts", column: "supplier_accounts_id"
end
