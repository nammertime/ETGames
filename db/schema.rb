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

ActiveRecord::Schema.define(version: 20170413180310) do

  create_table "abouts", force: :cascade do |t|
    t.string   "Name"
    t.text     "Desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "Name"
    t.text     "Desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "CustomerID"
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "UserName"
    t.string   "Password"
    t.string   "Address"
    t.string   "City"
    t.string   "PostalCode"
    t.string   "Phone"
    t.string   "Email"
    t.string   "Province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_genres", force: :cascade do |t|
    t.integer  "GenreID"
    t.string   "GenreName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "ProductID"
    t.string   "ProductGenreID"
    t.string   "ProductESRBID"
    t.string   "ProductName"
    t.text     "ProductDesc"
    t.string   "ProductImage"
    t.integer  "ProductStock"
    t.float    "ProductPrice"
    t.string   "ProductSKU"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "image"
  end

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "media", force: :cascade do |t|
    t.string   "file_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "CustomerID"
    t.float    "TaxRate"
    t.float    "Total"
    t.float    "subTotal"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "shopping_cart_id"
    t.integer  "customer_id"
    t.string   "state"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["shopping_cart_id"], name: "index_orders_on_shopping_cart_id"
  end

  create_table "post_attachments", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_esrbs", force: :cascade do |t|
    t.integer  "ProductESRBID"
    t.string   "ESRBRating"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "product_genres", force: :cascade do |t|
    t.integer  "ProductGenreID"
    t.string   "GenreName"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "ProductID"
    t.integer  "ProductGenreID"
    t.integer  "ProductESRBID"
    t.string   "ProductName"
    t.text     "ProductDesc"
    t.string   "ProductImage"
    t.integer  "ProductStock"
    t.float    "ProductPrice"
    t.string   "ProductSKU"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "GST"
    t.float    "PST"
    t.float    "HST"
  end

  create_table "shopping_cart_items", force: :cascade do |t|
    t.integer "owner_id"
    t.string  "owner_type"
    t.integer "quantity"
    t.integer "item_id"
    t.string  "item_type"
    t.integer "price_cents",    default: 0,     null: false
    t.string  "price_currency", default: "USD", null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "snippets", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uploads", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
