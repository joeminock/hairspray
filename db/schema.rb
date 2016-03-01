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

ActiveRecord::Schema.define(version: 20160301173319) do

  create_table "photos", force: :cascade do |t|
    t.integer  "stylist_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "photos", ["stylist_id"], name: "index_photos_on_stylist_id"

  create_table "stylists", force: :cascade do |t|
    t.string   "stylist_name"
    t.text     "about_the_stylist"
    t.string   "services_provided"
    t.string   "address"
    t.boolean  "works_in_salon"
    t.boolean  "works_in_office"
    t.boolean  "works_in_home"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "primary_title"
    t.string   "salon_name"
    t.text     "short_intro"
    t.string   "salon_phone"
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.string   "instagram_link"
    t.string   "snapchat_link"
    t.string   "email_link"
    t.string   "website_link"
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
    t.string   "fullname"
    t.string   "phone_number"
    t.text     "description"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
