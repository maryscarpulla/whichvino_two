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

ActiveRecord::Schema.define(version: 20170525211747) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "bucket_list_wines", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "wine_id"
    t.string   "bucket_wine_name"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_wines", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "wine_id"
    t.boolean  "bucket_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mycellarwines", force: :cascade do |t|
    t.string   "wine_name"
    t.string   "year"
    t.integer  "price"
    t.integer  "varietal_id"
    t.string   "winery"
    t.boolean  "bucket_list_wine"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mywineslists", force: :cascade do |t|
    t.string   "winename"
    t.string   "year"
    t.string   "price"
    t.string   "varietal"
    t.string   "winery"
    t.boolean  "bucketlist"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasting_note_tags", force: :cascade do |t|
    t.string   "tasting_note_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "varietals", force: :cascade do |t|
    t.string   "varietal_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wines", force: :cascade do |t|
    t.string   "name"
    t.string   "year"
    t.string   "price"
    t.integer  "varietal_id"
    t.string   "winery"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
