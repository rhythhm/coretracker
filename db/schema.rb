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

ActiveRecord::Schema.define(version: 20170227045422) do

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "season_type"
    t.string   "year"
    t.integer  "quantity"
    t.float    "net_of_sales"
    t.float    "dmrp"
    t.float    "mrp"
    t.float    "cost_price"
    t.float    "not_mix"
    t.integer  "category_id"
    t.integer  "brand_id"
    t.integer  "group_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "season_type_cd"
  end

  create_table "stores", force: :cascade do |t|
    t.string   "store_name"
    t.integer  "store_code"
    t.string   "lfl_flag"
    t.string   "store_grade"
    t.string   "store_location"
    t.string   "store_region"
    t.string   "store_state"
    t.string   "store_warehouse_name"
    t.integer  "store_warehouse_code"
    t.string   "season_type"
    t.integer  "brand_id"
    t.integer  "category_id"
    t.integer  "group_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string   "name"
    t.integer  "style_number"
    t.integer  "item_code"
    t.string   "color"
    t.string   "made_up_desc"
    t.string   "sub_category"
    t.string   "season_type"
    t.string   "size"
    t.string   "mrp"
    t.integer  "SOH"
    t.integer  "ARP"
    t.integer  "sale_qty"
    t.integer  "cy_salevalue"
    t.integer  "py_salevalue"
    t.integer  "cy_mrp_salevalue"
    t.integer  "py_mrp_salevalue"
    t.integer  "store_id"
    t.integer  "brand_id"
    t.integer  "category_id"
    t.integer  "group_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
