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

ActiveRecord::Schema[7.2].define(version: 2024_09_19_002112) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coach_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_coach_profiles_on_team_id"
    t.index ["user_id"], name: "index_coach_profiles_on_user_id"
  end

  create_table "coach_teams", force: :cascade do |t|
    t.bigint "coach_profile_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_profile_id"], name: "index_coach_teams_on_coach_profile_id"
    t.index ["team_id"], name: "index_coach_teams_on_team_id"
  end

  create_table "player_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_player_profiles_on_team_id"
    t.index ["user_id"], name: "index_player_profiles_on_user_id"
  end

  create_table "player_teams", force: :cascade do |t|
    t.bigint "player_profile_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_profile_id"], name: "index_player_teams_on_player_profile_id"
    t.index ["team_id"], name: "index_player_teams_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "series"
    t.string "pool"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "coach_profiles", "teams"
  add_foreign_key "coach_profiles", "users"
  add_foreign_key "coach_teams", "coach_profiles"
  add_foreign_key "coach_teams", "teams"
  add_foreign_key "player_profiles", "teams"
  add_foreign_key "player_profiles", "users"
  add_foreign_key "player_teams", "player_profiles"
  add_foreign_key "player_teams", "teams"
end
