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

ActiveRecord::Schema.define(version: 20140106155647) do

  create_table "ads_ads", force: true do |t|
    t.integer  "campaign_id"
    t.integer  "banner_id"
    t.string   "link"
    t.string   "file"
    t.integer  "display_count"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "disable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ads_ads", ["banner_id"], name: "index_ads_ads_on_banner_id"
  add_index "ads_ads", ["campaign_id"], name: "index_ads_ads_on_campaign_id"

  create_table "ads_banners", force: true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ads_campaigns", force: true do |t|
    t.string   "name"
    t.string   "advertiser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ads_stats", force: true do |t|
    t.integer  "ad_id"
    t.string   "ip_address"
    t.string   "request_hash"
    t.string   "session_hash"
    t.text     "referer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ads_stats", ["ad_id"], name: "index_ads_stats_on_ad_id"
  add_index "ads_stats", ["ip_address"], name: "index_ads_stats_on_ip_address"
  add_index "ads_stats", ["request_hash"], name: "index_ads_stats_on_request_hash"
  add_index "ads_stats", ["session_hash"], name: "index_ads_stats_on_session_hash"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
