# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_08_30_022422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pocket_monsters", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "image"
    t.string "shiny"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pocket_monsters_teams", id: false, force: :cascade do |t|
    t.bigint "pocket_monster_id"
    t.bigint "team_id"
    t.index ["pocket_monster_id"], name: "index_pocket_monsters_teams_on_pocket_monster_id"
    t.index ["team_id"], name: "index_pocket_monsters_teams_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams_pokemons", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "pocket_monsters_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pocket_monsters_id"], name: "index_teams_pokemons_on_pocket_monsters_id"
    t.index ["team_id"], name: "index_teams_pokemons_on_team_id"
  end

  add_foreign_key "teams_pokemons", "pocket_monsters", column: "pocket_monsters_id"
  add_foreign_key "teams_pokemons", "teams"
end
