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

 old
ActiveRecord::Schema.define(version: 2018_08_03_211042) do

ActiveRecord::Schema.define(version: 2018_08_02_230543) do
master

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingr_to_recs", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "recipe_id"
    t.integer "store_section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unit"
    t.float "amount"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.string "vegetarian"
    t.float "amount"
    t.string "unit"
    t.integer "ingredient_id"
    t.string "tried"
    t.float "rating"
    t.string "meal_prep"
    t.string "notes"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "shopping_lists", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_maps", force: :cascade do |t|
    t.string "aisl"
    t.integer "aisle_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_sections", force: :cascade do |t|
    t.string "section"
    t.integer "store_map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "this_weeks", force: :cascade do |t|
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
