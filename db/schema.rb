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

ActiveRecord::Schema.define(version: 2020_07_16_014321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.text "check_1"
    t.bigint "check1_id"
  end

  create_table "post_category_relations", id: :bigint, default: -> { "nextval('post_categories_id_seq'::regclass)" }, force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "category_id"
  end

  create_table "post_prefecture_relations", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.bigint "post_id"
    t.bigint "prefecture_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_post_prefecture_relations_on_post_id"
    t.index ["prefecture_id"], name: "index_post_prefecture_relations_on_prefecture_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.string "image"
    t.text "areaname"
    t.text "large_area"
    t.text "medium_area"
    t.text "check_1"
    t.text "check_2"
    t.string "check_3"
    t.text "genre"
    t.text "check_4"
    t.text "check_5"
    t.text "check_6"
    t.text "check_7"
    t.text "check_8"
    t.text "check_9"
  end

  create_table "prefectures", force: :cascade do |t|
    t.text "name"
    t.string "region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.text "name"
  end

  add_foreign_key "post_category_relations", "categories", name: "post_category_relations_category_id_fkey"
  add_foreign_key "post_category_relations", "posts", name: "post_category_relations_post_id_fkey"
  add_foreign_key "post_prefecture_relations", "posts"
  add_foreign_key "post_prefecture_relations", "prefectures"
end
