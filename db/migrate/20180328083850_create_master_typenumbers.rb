class CreateMasterTypenumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :master_typenumbers do |t|
      t.string :suit_type
      t.integer :start_limit
      t.integer :end_limit

      t.timestamps
    end
  end
end
