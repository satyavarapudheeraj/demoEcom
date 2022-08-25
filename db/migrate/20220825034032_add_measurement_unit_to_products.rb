class AddMeasurementUnitToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :measurement_unit, :string
  end
end
