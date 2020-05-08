class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.references :category_set, null: false, foreign_key: true
      t.string :category_name

      t.timestamps
    end
  end
end
