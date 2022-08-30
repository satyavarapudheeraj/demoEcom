class CreateParameters < ActiveRecord::Migration[5.1]
  def change
    create_table :parameters do |t|
      t.string :parameter_name
      t.timestamps
    end
  end
end
