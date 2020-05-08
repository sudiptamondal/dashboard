class CreateProductPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :product_prices do |t|
      t.references :Product, null: false, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
