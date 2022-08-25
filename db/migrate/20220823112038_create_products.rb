class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.integer :quantity
      t.decimal :mrp
      t.decimal :selling_price
      t.text :tags, array: true, default: []
      t.string :sku
      t.string :level1
      t.string :level2
      t.string :level3
      t.text :description

      t.timestamps
    end
  end
end