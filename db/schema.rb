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

ActiveRecord::Schema.define(version: 20130917183625) do

  create_table "calls", force: true do |t|
    t.integer  "dpto_id"
    t.integer  "servant_id"
    t.integer  "technical_id"
    t.integer  "service_id"
    t.text     "problem"
    t.string   "service"
    t.string   "obs"
    t.boolean  "closed",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "numprocess"
  end

  create_table "services", force: true do |t|
    t.string   "service"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technicals", force: true do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false, null: false
  end

end
