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

ActiveRecord::Schema.define(version: 20150225161929) do

  create_table "rhinoart_gallery_galleries", force: :cascade do |t|
    t.string   "name",                       null: false
    t.string   "slug",                       null: false
    t.text     "description"
    t.string   "image"
    t.integer  "position"
    t.boolean  "active",      default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rhinoart_gallery_images", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.string   "image",       null: false
    t.string   "alt"
    t.integer  "position"
    t.boolean  "active"
    t.integer  "gallery_id"
    t.datetime "created_at",  null: false
  end

  add_index "rhinoart_gallery_images", ["gallery_id"], name: "index_rhinoart_gallery_images_on_gallery_id"

end
