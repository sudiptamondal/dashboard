class AddRunLocalToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :run_local, :boolean
  end
end
