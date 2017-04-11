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

ActiveRecord::Schema.define(version: 20170405205121) do

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

  create_table "core_tracker_templates", force: :cascade do |t|
    t.string   "location_code"
    t.string   "location_name"
    t.string   "location_grade"
    t.string   "location_type"
    t.string   "region"
    t.string   "default_wh"
    t.string   "brand_name"
    t.string   "group_name"
    t.string   "dept_name"
    t.string   "category"
    t.string   "sub_cat"
    t.string   "made_up_desc"
    t.string   "style"
    t.string   "color"
    t.integer  "sizee"
    t.integer  "mrp"
    t.string   "item_code"
    t.string   "ean_code"
    t.integer  "base_stock"
    t.integer  "soh"
    t.integer  "arp_max"
    t.integer  "available_qty"
    t.integer  "intransit_qty"
    t.integer  "tsf_expected_qty"
    t.integer  "distro_qty"
    t.integer  "alloc_non_grn"
    t.integer  "open_po"
    t.integer  "cy_saleqty"
    t.integer  "py_saleqty"
    t.integer  "cy_salevalue"
    t.integer  "py_salevalue"
    t.integer  "cy_mrp_salevalue"
    t.integer  "py_mrp_salevalue"
    t.integer  "last_180days_saleqty"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lfl_nlfl_stores", force: :cascade do |t|
    t.string   "store_code"
    t.string   "store_name"
    t.string   "store_type"
    t.string   "lfl_flag"
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
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
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
