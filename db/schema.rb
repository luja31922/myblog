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

ActiveRecord::Schema.define(version: 2019_07_08_214234) do

  create_table "cities", force: :cascade do |t|
    t.string "ciudad"
    t.string "country_id"
    t.string "continente"
    t.integer "poblacion"
    t.text "descripcion"
  end

  create_table "countries", force: :cascade do |t|
    t.string "continente"
    t.string "pais"
    t.integer "poblacion"
    t.string "vida_costo"
    t.string "vacaciones_costo"
    t.string "moneda"
    t.text "descripcion"
    t.boolean "visa_requiere"
    t.boolean "lgtb_amigable"
  end

end
