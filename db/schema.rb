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

ActiveRecord::Schema.define(version: 20170408182805) do

  create_table "battery_banks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hot_collar_switches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "phase"
    t.integer  "nozzle"
    t.decimal  "mv",         precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "insulation_resistence_switches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "phase"
    t.integer  "proof"
    t.boolean  "position_switch"
    t.string   "connection"
    t.decimal  "date",            precision: 10
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "insulation_resistence_transformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "proof"
    t.string   "line"
    t.string   "guard"
    t.string   "earth"
    t.integer  "mide"
    t.integer  "number"
    t.decimal  "time",       precision: 10
    t.decimal  "resistance", precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "neckalace_energized_bor_h_transformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number"
    t.string   "mide"
    t.string   "mode_proof"
    t.decimal  "lost_mv",    precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "neckalace_energized_bor_x_transformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number"
    t.string   "mide"
    t.string   "mode_proof"
    t.decimal  "lost_mv",    precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "own_use_transformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "powe_factor_nozzle_hs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number"
    t.string   "mide"
    t.string   "mode_proof"
    t.decimal  "lost_mv",    precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "powe_factor_nozzle_xes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number"
    t.string   "mide"
    t.string   "mode_proof"
    t.decimal  "lost_mv",    precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "power_factor_switches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "phase"
    t.integer  "proof"
    t.boolean  "position_switches"
    t.integer  "tat"
    t.string   "tbt"
    t.string   "selector"
    t.decimal  "mv",                precision: 10
    t.decimal  "fp_current",        precision: 10
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "power_transformers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "stationary_batteries_battery_banks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.string   "identifier"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "switches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transformation_ratio_transfromers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "outlet"
    t.decimal  "relationship", precision: 10
    t.decimal  "step_a",       precision: 10
    t.decimal  "step_b",       precision: 10
    t.decimal  "step_c",       precision: 10
    t.decimal  "difference",   precision: 10
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "zones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.string   "identifier"
    t.integer  "region_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["region_id"], name: "index_zones_on_region_id", using: :btree
  end

end
