class AddWhatIdToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :what_id, :integer
  end
end
