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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131109140827) do

  create_table "bloggers", :force => true do |t|
    t.string   "title"
    t.string   "name",       :null => false
    t.binary   "img",        :null => false
    t.text     "intro",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "content",    :null => false
    t.integer  "blogger_id"
    t.integer  "dish_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dishes", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "price",      :null => false
    t.binary   "img",        :null => false
    t.string   "including"
    t.string   "intro"
    t.integer  "store_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.string   "title"
    t.binary   "img"
    t.string   "article"
    t.string   "author"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stores", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "location",   :null => false
    t.string   "phone"
    t.string   "otime",      :null => false
    t.string   "ctime",      :null => false
    t.binary   "img1",       :null => false
    t.binary   "img2"
    t.binary   "img3"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "intro"
    t.text     "fb_url"
  end

end
