class CreateDayActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :day_activities do |t|
      t.integer :day_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
