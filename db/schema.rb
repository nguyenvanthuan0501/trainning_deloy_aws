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

ActiveRecord::Schema.define(version: 2022_06_16_040734) do

  create_table "article_medias", charset: "utf8mb3", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "uuid", default: "5cb718b0-cf58-013a-71c3-0c8590ac713a", null: false
    t.integer "article_id"
    t.string "media_type"
    t.string "media_content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "articles", charset: "utf8mb3", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "uuid", default: "5cb002f0-cf58-013a-71c3-0c8590ac713a", null: false
    t.integer "user_id"
    t.string "title"
    t.text "content"
    t.string "media_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb3", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "uuid", default: "5c9ef980-cf58-013a-71c3-0c8590ac713a", null: false
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "phone_number"
    t.string "avatar"
    t.string "address"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end