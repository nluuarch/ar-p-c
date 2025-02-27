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

ActiveRecord::Schema.define(version: 2021_12_22_220920) do

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.string "intended_to_be"
    t.float "current_price"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "score"
    t.string "reason"
    t.float "recommended_price"
    t.integer "dish_id"
    t.integer "user_id"
    t.index ["dish_id"], name: "index_ratings_on_dish_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

end
