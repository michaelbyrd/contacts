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

ActiveRecord::Schema.define(version: 20150210214341) do

  create_table "addresses", force: :cascade do |t|
    t.string   "city"
    t.integer  "zip"
    t.integer  "contact_id"
    t.integer  "category_id"
    t.integer  "state_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "addresses", ["category_id"], name: "index_addresses_on_category_id"
  add_index "addresses", ["contact_id"], name: "index_addresses_on_contact_id"
  add_index "addresses", ["state_id"], name: "index_addresses_on_state_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts_groups", id: false, force: :cascade do |t|
    t.integer "contact_id", null: false
    t.integer "group_id",   null: false
  end

  create_table "email_addresses", force: :cascade do |t|
    t.string   "email"
    t.integer  "contact_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "email_addresses", ["category_id"], name: "index_email_addresses_on_category_id"
  add_index "email_addresses", ["contact_id"], name: "index_email_addresses_on_contact_id"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "text"
    t.integer  "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "notes", ["contact_id"], name: "index_notes_on_contact_id"

  create_table "numbers", force: :cascade do |t|
    t.integer  "number"
    t.integer  "contact_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "numbers", ["category_id"], name: "index_numbers_on_category_id"
  add_index "numbers", ["contact_id"], name: "index_numbers_on_contact_id"

  create_table "relationships", force: :cascade do |t|
    t.string   "relation"
    t.integer  "primary_id"
    t.integer  "secondary_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "street_addresses", force: :cascade do |t|
    t.integer  "line_number"
    t.string   "line"
    t.integer  "address_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "street_addresses", ["address_id"], name: "index_street_addresses_on_address_id"

end
