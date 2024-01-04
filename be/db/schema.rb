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

ActiveRecord::Schema[7.1].define(version: 2024_01_04_001603) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_conditions", force: :cascade do |t|
    t.bigint "scoring_card_id", null: false
    t.bigint "scoring_condition_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scoring_card_id"], name: "index_card_conditions_on_scoring_card_id"
    t.index ["scoring_condition_id"], name: "index_card_conditions_on_scoring_condition_id"
  end

  create_table "scoring_cards", force: :cascade do |t|
    t.string "scoring_description"
    t.bigint "veggie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["veggie_id"], name: "index_scoring_cards_on_veggie_id"
  end

  create_table "scoring_conditions", force: :cascade do |t|
    t.integer "points"
    t.string "scoring_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veggie_conditions", force: :cascade do |t|
    t.bigint "card_condition_id", null: false
    t.bigint "veggie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_condition_id"], name: "index_veggie_conditions_on_card_condition_id"
    t.index ["veggie_id"], name: "index_veggie_conditions_on_veggie_id"
  end

  create_table "veggies", force: :cascade do |t|
    t.string "color"
    t.string "name"
    t.string "png"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "card_conditions", "scoring_cards"
  add_foreign_key "card_conditions", "scoring_conditions"
  add_foreign_key "scoring_cards", "veggies", column: "veggie_id"
  add_foreign_key "veggie_conditions", "card_conditions"
  add_foreign_key "veggie_conditions", "veggies", column: "veggie_id"
end
