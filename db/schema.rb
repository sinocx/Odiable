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

ActiveRecord::Schema.define(version: 20180306093358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hypotheses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "transporter_id"
    t.integer "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.integer "price_cents", default: 0, null: false
    t.bigint "hypothese_id"
    t.index ["hypothese_id"], name: "index_offers_on_hypothese_id"
    t.index ["product_id"], name: "index_offers_on_product_id"
    t.index ["transporter_id"], name: "index_offers_on_transporter_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "product_id"
    t.date "checkin"
    t.date "checkout"
    t.string "uniquekey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "description"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "aa"
    t.string "ad"
    t.datetime "date"
    t.float "ad_latitude"
    t.float "ad_longitude"
    t.float "aa_latitude"
    t.float "aa_longitude"
    t.integer "price_cents", default: 0, null: false
    t.string "category"
    t.bigint "width_id"
    t.datetime "date_delivery"
    t.index ["user_id"], name: "index_products_on_user_id"
    t.index ["width_id"], name: "index_products_on_width_id"
  end

  create_table "transporters", force: :cascade do |t|
    t.string "car"
    t.string "capacity"
    t.string "permit"
    t.string "cin"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_transporters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.text "description"
    t.boolean "transporter", default: false
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "widths", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "offers", "hypotheses", column: "hypothese_id"
  add_foreign_key "offers", "products"
  add_foreign_key "offers", "transporters"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "users"
  add_foreign_key "products", "widths"
  add_foreign_key "transporters", "users"
end
