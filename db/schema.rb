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

ActiveRecord::Schema.define(version: 20170403054222) do

  create_table "reservations", force: :cascade do |t|
    t.string   "first_guest_first_name"
    t.string   "first_guest_last_name"
    t.string   "second_guest_first_name"
    t.string   "second_guest_last_name"
    t.string   "third_guest_first_name"
    t.string   "third_guest_last_name"
    t.string   "fourth_guest_first_name"
    t.string   "fourth_guest_last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "message"
    t.string   "diet"
    t.string   "status"
    t.string   "paid"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "number_of_guests"
  end

end
