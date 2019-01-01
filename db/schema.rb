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

ActiveRecord::Schema.define(version: 2018_12_29_190307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "runners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runners_runs", force: :cascade do |t|
    t.bigint "runner_id", null: false
    t.bigint "run_id", null: false
    t.index ["run_id", "runner_id"], name: "index_runners_runs_on_run_id_and_runner_id"
    t.index ["runner_id", "run_id"], name: "index_runners_runs_on_runner_id_and_run_id"
  end

  create_table "runs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "start_location"
    t.string "end_location"
    t.datetime "date"
    t.float "distance"
    t.boolean "is_private"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "runner_id"
    t.decimal "start_lat", precision: 10, scale: 6
    t.decimal "start_lng", precision: 10, scale: 6
    t.decimal "end_lat", precision: 10, scale: 6
    t.decimal "end_lng", precision: 10, scale: 6
    t.index ["runner_id"], name: "index_runs_on_runner_id"
  end

  add_foreign_key "runs", "runners"
end
