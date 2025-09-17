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

ActiveRecord::Schema[7.2].define(version: 2025_09_17_090635) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "measurements", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "video_upload_id", null: false
    t.decimal "height"
    t.decimal "belly_round"
    t.decimal "arm_length"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_measurements_on_user_id"
    t.index ["video_upload_id"], name: "index_measurements_on_video_upload_id"
  end

  create_table "size_charts", force: :cascade do |t|
    t.string "chart_name"
    t.string "gender"
    t.string "size_label"
    t.decimal "min_height"
    t.decimal "max_height"
    t.decimal "min_belly_round"
    t.decimal "max_belly_round"
    t.decimal "min_arm_length"
    t.decimal "max_arm_length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uniform_sizes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "measurement_id", null: false
    t.bigint "size_chart_id", null: false
    t.string "final_size_label"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["measurement_id"], name: "index_uniform_sizes_on_measurement_id"
    t.index ["size_chart_id"], name: "index_uniform_sizes_on_size_chart_id"
    t.index ["user_id"], name: "index_uniform_sizes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "location"
    t.string "theme_preference"
    t.string "otp_secret"
    t.integer "consumed_timestep"
    t.boolean "otp_required_for_login"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "video_uploads", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "video_file_name"
    t.integer "video_file_size"
    t.string "video_url"
    t.string "ai_processing_status"
    t.datetime "processed_at"
    t.datetime "delete_after"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_video_uploads_on_user_id"
  end

  add_foreign_key "measurements", "users"
  add_foreign_key "measurements", "video_uploads"
  add_foreign_key "uniform_sizes", "measurements"
  add_foreign_key "uniform_sizes", "size_charts"
  add_foreign_key "uniform_sizes", "users"
  add_foreign_key "video_uploads", "users"
end
