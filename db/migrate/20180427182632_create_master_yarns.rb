class CreateMasterYarns < ActiveRecord::Migration[5.1]
  def change
    create_table :master_yarns do |t|
      t.date :Date
      t.string :Color
      t.string :Lotnumber
      t.float :Quantity

      t.timestamps
    end
  end
end
