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

ActiveRecord::Schema.define(version: 20140817165814) do

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "name"
    t.string   "unit"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "vendor"
    t.string   "email"
    t.string   "product"
    t.string   "description"
    t.string   "product1"
    t.string   "product2"
    t.string   "product3"
    t.string   "product4"
    t.string   "product5"
    t.string   "product6"
    t.string   "product7"
    t.string   "product8"
    t.string   "product9"
    t.string   "product10"
    t.integer  "quantity1"
    t.integer  "quantity2"
    t.integer  "quantity3"
    t.integer  "quantity4"
    t.integer  "quantity5"
    t.integer  "quantity6"
    t.integer  "quantity7"
    t.integer  "quantity8"
    t.integer  "quantity9"
    t.integer  "quantity10"
    t.string   "unit1"
    t.string   "unit2"
    t.string   "unit3"
    t.string   "unit4"
    t.string   "unit5"
    t.string   "unit6"
    t.string   "unit7"
    t.string   "unit8"
    t.string   "unit9"
    t.string   "unit10"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "products" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
