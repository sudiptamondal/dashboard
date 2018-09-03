class RemoveScheduledAtFromSchedules < ActiveRecord::Migration[5.0]
  def change
    remove_column :schedules, :scheduled_at, :string
  end
end
