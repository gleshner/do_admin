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

ActiveRecord::Schema.define(:version => 20130520053054) do

  create_table "events", :force => true do |t|
    t.string   "e_name"
    t.date     "startDate"
    t.integer  "duration"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "presenters", :force => true do |t|
    t.string   "nameFirst"
    t.string   "nameLast"
    t.string   "nameAlias"
    t.string   "email"
    t.string   "privateEmail"
    t.string   "phone"
    t.string   "website"
    t.string   "fetlife"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "google"
    t.text     "shortDescrip"
    t.text     "bio"
    t.string   "shirtSize"
    t.boolean  "new"
    t.string   "image"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "schedules", :force => true do |t|
    t.date     "classDate"
    t.time     "startTime"
    t.time     "endTime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "things", :force => true do |t|
    t.integer  "event_id"
    t.integer  "workshop_id"
    t.integer  "presenter_id"
    t.date     "classDate"
    t.time     "startTime"
    t.time     "endTime"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "things", ["event_id"], :name => "index_things_on_event_id"
  add_index "things", ["presenter_id"], :name => "index_things_on_presenter_id"
  add_index "things", ["workshop_id"], :name => "index_things_on_workshop_id"

  create_table "workshops", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "level"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
