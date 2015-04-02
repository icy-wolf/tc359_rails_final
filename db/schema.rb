# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150402014501) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recyclers", force: :cascade do |t|
    t.text     "name"
    t.text     "address"
    t.text     "phone"
    t.text     "website"
    t.text     "email"
    t.boolean  "accepts_white_computer_paper"
    t.boolean  "accepts_corrugated_cardboard"
    t.boolean  "accepts_color_separated_glass"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "wolves", force: :cascade do |t|
    t.text     "name"
    t.text     "species"
    t.text     "pack_rank"
    t.integer  "pack_number"
    t.boolean  "is_alive"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
