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

ActiveRecord::Schema[7.0].define(version: 2022_10_20_125753) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aromas", force: :cascade do |t|
    t.string "name", null: false
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  create_table "questions", force: :cascade do |t|
    t.text "content", null: false
    t.text "description", null: false
    t.bigint "wine_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wine_id"], name: "index_questions_on_wine_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "vintage", null: false
    t.string "label"
    t.string "image"
    t.integer "category", default: 0, null: false
    t.integer "color", default: 0, null: false
    t.integer "price"
    t.integer "description"
    t.integer "sweetness", null: false
    t.integer "body", null: false
    t.integer "acidity", null: false
    t.integer "tannin", null: false
    t.bigint "region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_wines_on_region_id"
  end

  add_foreign_key "choices", "questions"
  add_foreign_key "questions", "wines"
  add_foreign_key "wine_aromas", "aromas"
  add_foreign_key "wine_aromas", "wines"
  add_foreign_key "wine_grapes", "grape_varieties"
  add_foreign_key "wine_grapes", "wines"
  add_foreign_key "wines", "regions"
end
