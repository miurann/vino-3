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

ActiveRecord::Schema[7.0].define(version: 2023_03_03_104716) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "choice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["choice_id"], name: "index_achievements_on_choice_id"
    t.index ["user_id"], name: "index_achievements_on_user_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
  end

  create_table "aromas", force: :cascade do |t|
    t.string "name", null: false
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_aromas_on_name", unique: true
  end

  create_table "choices", force: :cascade do |t|
    t.text "content", null: false
    t.boolean "correct_answer", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_choices_on_question_id"
  end

  create_table "grape_varieties", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_grape_varieties_on_name", unique: true
  end

  create_table "questions", force: :cascade do |t|
    t.text "content", null: false
    t.text "description", null: false
    t.bigint "wine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "region_id", null: false
    t.index ["region_id"], name: "index_questions_on_region_id"
    t.index ["wine_id"], name: "index_questions_on_wine_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "name", null: false
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.integer "access_count_to_reset_password_page", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

  create_table "wine_aromas", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "aroma_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aroma_id"], name: "index_wine_aromas_on_aroma_id"
    t.index ["wine_id"], name: "index_wine_aromas_on_wine_id"
  end

  create_table "wine_grapes", force: :cascade do |t|
    t.bigint "wine_id", null: false
    t.bigint "grape_variety_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grape_variety_id"], name: "index_wine_grapes_on_grape_variety_id"
    t.index ["wine_id"], name: "index_wine_grapes_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name", null: false
    t.string "producer", null: false
    t.string "jpn_name", null: false
    t.string "label"
    t.string "image"
    t.integer "category", default: 0, null: false
    t.integer "color", default: 0, null: false
    t.integer "price"
    t.text "description"
    t.integer "sweetness", null: false
    t.integer "body", null: false
    t.integer "acidity", null: false
    t.integer "tannin", null: false
    t.bigint "region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_wines_on_region_id"
  end

  add_foreign_key "achievements", "choices"
  add_foreign_key "achievements", "users"
  add_foreign_key "choices", "questions"
  add_foreign_key "questions", "wines"
  add_foreign_key "wine_aromas", "aromas"
  add_foreign_key "wine_aromas", "wines"
  add_foreign_key "wine_grapes", "grape_varieties"
  add_foreign_key "wine_grapes", "wines"
  add_foreign_key "wines", "regions"
end
