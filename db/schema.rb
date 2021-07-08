# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_13_301316) do

  create_table "admins", force: :cascade do |t|
    t.string "user"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "restaurant_id"
    t.float "total"
    t.integer "status", default: 0
    t.boolean "order_taken"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deliverymen", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "wallet"
    t.string "telephone"
    t.date "birthdate"
    t.string "cpf"
    t.string "address"
    t.string "vehicle_type"
    t.string "driver_license"
    t.string "delivery_active"
    t.string "email_active"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "status"
    t.boolean "order_taken"
    t.integer "quantity"
    t.integer "cart_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_orders_on_cart_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "course_name"
    t.string "photo"
    t.string "description"
    t.float "price"
    t.string "portion"
    t.integer "order_times"
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_products_on_restaurant_id"
  end

  create_table "rates", force: :cascade do |t|
    t.string "values"
    t.integer "user_id", null: false
    t.integer "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_rates_on_order_id"
    t.index ["user_id"], name: "index_rates_on_user_id"
  end

  create_table "restaurant_owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "telephone"
    t.integer "wallet"
    t.date "birthdate"
    t.string "cpf"
    t.string "address"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.string "foodtype"
    t.string "openinghours"
    t.string "address"
    t.string "cnpj"
    t.integer "restaurant_owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_owner_id"], name: "index_restaurants_on_restaurant_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "wallet"
    t.string "telephone"
    t.date "birthdate"
    t.string "cpf"
    t.string "address"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "orders", "carts"
  add_foreign_key "orders", "products"
  add_foreign_key "products", "restaurants"
  add_foreign_key "rates", "orders"
  add_foreign_key "rates", "users"
  add_foreign_key "restaurants", "restaurant_owners"
end
