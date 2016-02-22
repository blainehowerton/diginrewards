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

ActiveRecord::Schema.define(version: 20160221200715) do

  create_table "causes", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.string   "paypalID",       limit: 255
    t.string   "email",          limit: 255
    t.string   "street_address", limit: 255
    t.string   "city",           limit: 255
    t.string   "state",          limit: 2
    t.string   "zip",            limit: 5
    t.string   "phone",          limit: 10
    t.decimal  "split",                      precision: 5, scale: 2, default: 0.03, null: false
  end

  create_table "retailers", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.string   "paypalID",       limit: 255
    t.string   "street_address", limit: 255
    t.string   "city",           limit: 255
    t.string   "state",          limit: 2
    t.string   "zip",            limit: 5
    t.string   "phone",          limit: 10
    t.string   "email",          limit: 255
    t.decimal  "split",                      precision: 5, scale: 2, default: 0.03, null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.decimal  "amount",                     precision: 10, scale: 2
    t.integer  "user_id",          limit: 4
    t.integer  "retailer_id",      limit: 4
    t.datetime "created_at",                                                         null: false
    t.datetime "updated_at",                                                         null: false
    t.boolean  "approved"
    t.date     "transaction_date"
    t.decimal  "user_split",                 precision: 5,  scale: 2, default: 0.03, null: false
    t.decimal  "cause_split",                precision: 5,  scale: 2, default: 0.03, null: false
    t.decimal  "retailer_split",             precision: 5,  scale: 2, default: 0.03, null: false
    t.integer  "cause_id",         limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",       limit: 255
    t.integer  "cause_id",       limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "paypalID",       limit: 255
    t.string   "street_address", limit: 255
    t.string   "city",           limit: 255
    t.string   "state",          limit: 2
    t.string   "zip",            limit: 5
    t.string   "phone",          limit: 10
    t.string   "email",          limit: 255
  end

end
