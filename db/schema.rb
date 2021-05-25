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

ActiveRecord::Schema.define(version: 2021_05_24_181155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_variations", force: :cascade do |t|
    t.bigint "article_id", null: false
    t.string "action_button_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "hero_image_file_name"
    t.string "hero_image_content_type"
    t.integer "hero_image_file_size"
    t.datetime "hero_image_updated_at"
    t.integer "variation_type", default: 0
    t.index ["article_id"], name: "index_article_variations_on_article_id"
    t.index ["variation_type"], name: "index_article_variations_on_variation_type"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "article_variations", "articles"
end
