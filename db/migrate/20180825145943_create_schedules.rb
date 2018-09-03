class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.datetime :scheduled_at
      t.boolean :is_scheduled
      t.datetime :schedule_start_date
      t.datetime :schedule_end_date
      t.string :what

      t.timestamps
    end
  end
end
