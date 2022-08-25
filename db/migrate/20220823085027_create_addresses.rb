class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :door_no
      t.string :landmark
      t.numeric :pincode
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
