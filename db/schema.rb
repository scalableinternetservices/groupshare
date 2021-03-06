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

ActiveRecord::Schema.define(version: 20151027222016) do

  create_table "contents", force: :cascade do |t|
    t.string   "type"
    t.string   "metadata"
    t.string   "expire_at"
    t.string   "owner"
    t.string   "title"
    t.integer  "stream_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "contents", ["stream_id"], name: "index_contents_on_stream_id"

  create_table "streams", force: :cascade do |t|
    t.string   "owner"
    t.string   "title"
    t.string   "description"
    t.boolean  "is_public"
    t.datetime "expire_at"
    t.string   "pin_hash"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
