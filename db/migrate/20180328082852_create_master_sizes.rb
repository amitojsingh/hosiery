class CreateMasterSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :master_sizes do |t|
      t.string :size

      t.timestamps
    end
  end
end
