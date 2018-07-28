class CreateTaskRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :task_records do |t|
      t.references :task, foreign_key: true
      t.datetime :last_run
      t.string :message
      t.text :stacktrace

      t.timestamps
    end
  end
end
