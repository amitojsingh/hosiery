class CreateManufacturingKnittings < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturing_knittings do |t|
      t.integer :ordernumber
      t.string :parts
      t.integer :quantity
      t.string :worker
      t.string :serial
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
