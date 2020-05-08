class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :link
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
