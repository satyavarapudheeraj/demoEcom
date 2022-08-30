class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string   "name"
      t.string   "email"
      t.text     "address"
      t.string   "pay_method"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
