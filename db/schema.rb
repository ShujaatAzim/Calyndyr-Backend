ActiveRecord::Schema.define(version: 2020_10_14_220051) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.boolean "complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "day_activities", force: :cascade do |t|
    t.integer "day_id"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days", force: :cascade do |t|
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
