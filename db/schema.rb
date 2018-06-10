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

ActiveRecord::Schema.define(version: 2018_06_10_164321) do

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "date"
    t.text "comments"
    t.integer "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "individuals", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "job_title"
    t.string "email"
    t.string "phone"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "individuals_organizations", id: false, force: :cascade do |t|
    t.integer "organization_id", null: false
    t.integer "individual_id", null: false
    t.index ["individual_id", "organization_id"], name: "idv_org"
    t.index ["organization_id", "individual_id"], name: "org_idv"
  end

  create_table "individuals_venues", id: false, force: :cascade do |t|
    t.integer "individual_id", null: false
    t.integer "venue_id", null: false
    t.index ["individual_id", "venue_id"], name: "index_individuals_venues_on_individual_id_and_venue_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "region"
    t.string "zipcode"
    t.string "email"
    t.string "phone"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations_venues", id: false, force: :cascade do |t|
    t.integer "organization_id", null: false
    t.integer "venue_id", null: false
    t.index ["organization_id", "venue_id"], name: "index_organizations_venues_on_organization_id_and_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name", null: false
    t.string "kind"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "region"
    t.string "zipcode"
    t.string "email"
    t.string "phone"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
