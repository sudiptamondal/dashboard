class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :content
      t.datetime :alarm

      t.timestamps
    end
  end
end
