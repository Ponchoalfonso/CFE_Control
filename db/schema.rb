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

ActiveRecord::Schema.define(version: 20170426132059) do

  create_table "btbanks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "lastupdate"
    t.integer  "subestation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["subestation_id"], name: "index_btbanks_on_subestation_id", using: :btree
  end

  create_table "etnhtransformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number"
    t.string   "mide"
    t.string   "test_mode"
    t.decimal  "lost_mv",    precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "etnxtransformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number"
    t.string   "mide"
    t.string   "test_mode"
    t.decimal  "lost_mv",    precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "hnswitches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "phase"
    t.integer  "nozzle"
    t.decimal  "mv",         precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "irswitches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "phase"
    t.integer  "proof"
    t.boolean  "position_switch"
    t.string   "connection"
    t.decimal  "gigaohms",        precision: 10
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "irtransformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "proof"
    t.string   "line"
    t.string   "guard"
    t.string   "earth"
    t.integer  "measure"
    t.integer  "number"
    t.decimal  "time",       precision: 10
    t.decimal  "resistence", precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "npfhtransformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number"
    t.string   "mide"
    t.string   "test_mode"
    t.decimal  "lost_mv",    precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "npfxtransformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number"
    t.string   "mide"
    t.string   "test_mode"
    t.decimal  "lost_mv",    precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "owntransformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "lastupdate"
    t.integer  "subestation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["subestation_id"], name: "index_owntransformers_on_subestation_id", using: :btree
  end

  create_table "pfswitches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "phase"
    t.integer  "proof"
    t.boolean  "switch_position"
    t.integer  "tat"
    t.string   "tbt"
    t.string   "selector_switch"
    t.decimal  "mv",              precision: 10
    t.decimal  "fp_current",      precision: 10
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "pwtransformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "lastupdate"
    t.integer  "subestation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["subestation_id"], name: "index_pwtransformers_on_subestation_id", using: :btree
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "abreviation"
    t.integer  "identifier"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sbbanks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "cell"
    t.decimal  "without_charge", precision: 10
    t.decimal  "voltage_5min",   precision: 10
    t.decimal  "amperage_5min",  precision: 10
    t.decimal  "voltage_15min",  precision: 10
    t.decimal  "amperage_15min", precision: 10
    t.decimal  "voltage_30min",  precision: 10
    t.decimal  "amperage_30min", precision: 10
    t.decimal  "voltage_1hr",    precision: 10
    t.decimal  "amperage_1hr",   precision: 10
    t.decimal  "voltage_2hr",    precision: 10
    t.decimal  "amperage_2hr",   precision: 10
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "subestations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "abreviation"
    t.integer  "identifier"
    t.integer  "zone_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["zone_id"], name: "index_subestations_on_zone_id", using: :btree
  end

  create_table "switches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "lastupdate"
    t.integer  "subestation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["subestation_id"], name: "index_switches_on_subestation_id", using: :btree
  end

  create_table "trtranformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "take_tap"
    t.decimal  "nominal_relationship", precision: 10
    t.decimal  "phase",                precision: 10
    t.decimal  "difference",           precision: 10
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "zones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "abreviation"
    t.integer  "identifier"
    t.integer  "region_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["region_id"], name: "index_zones_on_region_id", using: :btree
  end

end
