class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.integer  "quantity",   default: 1
      t.integer  "item_id"
      t.integer  "cart_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer  "order_id"

      t.timestamps
    end
  end
end
