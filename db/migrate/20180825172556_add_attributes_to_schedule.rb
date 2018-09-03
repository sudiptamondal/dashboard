class AddAttributesToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :on_monday, :boolean
    add_column :schedules, :on_tuesday, :boolean
    add_column :schedules, :on_wednesday, :boolean
    add_column :schedules, :on_thursday, :boolean
    add_column :schedules, :on_friday, :boolean
    add_column :schedules, :on_saturday, :boolean
    add_column :schedules, :on_sunday, :boolean
    add_column :schedules, :repeat, :boolean
    add_column :schedules, :custom, :text
  end
end
