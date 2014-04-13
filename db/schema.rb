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

ActiveRecord::Schema.define(version: 20140403172916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contents", force: true do |t|
    t.integer  "user_id"
    t.string   "type"
    t.boolean  "collab",     default: false
    t.boolean  "feedback",   default: false
    t.boolean  "latest",     default: false
    t.integer  "media_id"
    t.string   "title"
    t.string   "media_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: true do |t|
    t.string   "uid"
    t.string   "provider_type"
    t.string   "token"
    t.string   "refresh_token"
    t.datetime "expiresat"
    t.string   "secret"
    t.string   "avatar"
    t.string   "username"
    t.integer  "user_id"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.string   "location"
    t.string   "website"
    t.string   "bio"
    t.boolean  "dj",           default: false
    t.boolean  "producer",     default: false
    t.boolean  "rapper",       default: false
    t.boolean  "singer",       default: false
    t.boolean  "songwriter",   default: false
    t.boolean  "musician",     default: false
    t.boolean  "animator",     default: false
    t.boolean  "filmmaker",    default: false
    t.boolean  "videographer", default: false
    t.boolean  "editor",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
