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

ActiveRecord::Schema.define(version: 20170910203519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "online_url"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url_file_name"
    t.string "url_content_type"
    t.integer "url_file_size"
    t.datetime "url_updated_at"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "other_user_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.integer "user_id"
    t.string "lost_or_found"
    t.string "name"
    t.string "animal"
    t.string "breed"
    t.string "color"
    t.string "city"
    t.string "state"
    t.string "neighborhood"
    t.string "description"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
