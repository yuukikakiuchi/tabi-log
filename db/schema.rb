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

ActiveRecord::Schema.define(version: 2020_07_10_022734) do

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "content"
    t.string "image", null: false
    t.string "areaname", default: "", null: false
    t.string "genre", default: "", null: false
    t.string "large_area", default: "", null: false
    t.string "medium_area", default: "", null: false
    t.text "level"
    t.string "check_1", default: "", null: false
    t.string "check_2", default: "", null: false
    t.string "check_3", default: "", null: false
    t.string "check_4", default: "", null: false
    t.string "check_5", default: "", null: false
    t.string "check_6", default: "", null: false
    t.string "check_7", default: "", null: false
    t.string "check_8", default: "", null: false
    t.string "check_9", default: "", null: false
  end

end
