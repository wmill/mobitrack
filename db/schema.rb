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

ActiveRecord::Schema.define(:version => 20120205222438) do

  create_table "convention_delegates", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "riding"
    t.decimal  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "observations", :force => true do |t|
    t.integer  "convention_delegate_id"
    t.integer  "user_id"
    t.string   "ip_address"
    t.string   "user_agent"
    t.datetime "created"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "observations", ["convention_delegate_id"], :name => "index_observations_on_convention_delegate_id"
  add_index "observations", ["user_id"], :name => "index_observations_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "password"
    t.string   "quickblob"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
