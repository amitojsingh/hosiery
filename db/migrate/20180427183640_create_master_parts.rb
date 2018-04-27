class CreateMasterParts < ActiveRecord::Migration[5.1]
  def change
    create_table :master_parts do |t|
      t.string :suitpart

      t.timestamps
    end
  end
end
