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

ActiveRecord::Schema.define(version: 20180304195930) do

  create_table "packers", force: :cascade do |t|
    t.string "name"
    t.date "rating_date"
    t.boolean "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packjobs", force: :cascade do |t|
    t.integer "rig_id"
    t.integer "packer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["packer_id"], name: "index_packjobs_on_packer_id"
    t.index ["rig_id"], name: "index_packjobs_on_rig_id"
  end

  create_table "rigs", force: :cascade do |t|
    t.boolean "rig_status"
    t.string "rig_type_number"
    t.integer "rig_season_jumpnum"
    t.date "rig_res_last"
    t.string "rig_res_who"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
