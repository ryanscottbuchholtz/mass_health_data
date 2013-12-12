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

ActiveRecord::Schema.define(version: 20131212011904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "town_health_records", force: true do |t|
    t.string   "town"
    t.integer  "total_population_2005"
    t.integer  "population_19_and_under_2005"
    t.integer  "population_65_and_over_2005"
    t.integer  "per_capita_income_2000"
    t.integer  "persons_below_200pct_poverty_2000"
    t.decimal  "percent_below_200pct_poverty_2000"
    t.decimal  "pct_adequacy_prenatal_care_2000"
    t.decimal  "pct_csection_delivery_20052008"
    t.integer  "infant_death_count_20052008"
    t.decimal  "infant_mortality_per_1000_live_births"
    t.decimal  "pct_low_birthweight_20052008"
    t.decimal  "pct_multiple_births_20052008"
    t.decimal  "pct_public_financed_prenatal_care_20052008"
    t.decimal  "pct_teen_births_20052008"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
