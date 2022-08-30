class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
        t.string :name
        t.string :brand
        t.integer :quantity
        t.decimal :mrp
        t.decimal :selling_price
        t.text :tags, array: true, default: []
        t.string :sku
        t.string :level_type
        t.text :description
        t.string :parameter_name
        t.timestamps
    end
  end
end
