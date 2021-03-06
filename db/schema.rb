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

ActiveRecord::Schema.define(version: 20160429012814) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "stylist_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "appointments", ["stylist_id"], name: "index_appointments_on_stylist_id"
  add_index "appointments", ["user_id"], name: "index_appointments_on_user_id"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

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
    t.integer  "price"
    t.boolean  "active"
    t.string   "slug"
    t.string   "city"
    t.string   "state"
    t.string   "salon_website"
    t.string   "salon_facebook"
    t.string   "stylist_website"
    t.string   "stylist_facebook"
    t.string   "stylist_twitter"
    t.string   "stylist_instagram"
    t.string   "stylist_periscope"
    t.string   "stylist_pinterest"
    t.string   "stylist_snapchat"
  end

  add_index "stylists", ["slug"], name: "index_stylists_on_slug", unique: true

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
