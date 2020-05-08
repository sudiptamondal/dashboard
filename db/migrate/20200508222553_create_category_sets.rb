class CreateCategorySets < ActiveRecord::Migration[6.0]
  def change
    create_table :category_sets do |t|
      t.string :category_set_name

      t.timestamps
    end
  end
end
