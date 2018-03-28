class CreateMasterVarieties < ActiveRecord::Migration[5.1]
  def change
    create_table :master_varieties do |t|
      t.string :variety

      t.timestamps
    end
  end
end
