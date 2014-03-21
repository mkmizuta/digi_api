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

ActiveRecord::Schema.define(version: 20140320214917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: true do |t|
    t.integer "checkout_id"
  end

  create_table "checkouts", force: true do |t|
    t.string  "name"
    t.string  "email"
    t.string  "cc"
    t.string  "cvv"
    t.string  "expiration"
    t.string  "zipcode"
    t.integer "cart_id"
  end

  create_table "items", force: true do |t|
    t.integer "product_id"
    t.integer "cart_id"
    t.integer "current_price"
    t.integer "quantity"
  end

  create_table "orders", force: true do |t|
    t.boolean "paid"
    t.integer "checkout_id"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.string   "image"
    t.string   "avatar"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
