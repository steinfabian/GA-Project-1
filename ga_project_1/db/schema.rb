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

ActiveRecord::Schema.define(version: 20141006020749) do

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "unit_number"
    t.string   "street_number"
    t.string   "suburb"
    t.string   "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.string   "top_size"
    t.string   "top_colour"
    t.string   "bottom_size"
    t.string   "bottom_colour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders_products", id: false, force: true do |t|
    t.integer "order_id"
    t.integer "product_id"
  end

  create_table "products", force: true do |t|
    t.string   "product_name"
    t.text     "image"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
