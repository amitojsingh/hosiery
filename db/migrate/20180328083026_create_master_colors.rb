class CreateMasterColors < ActiveRecord::Migration[5.1]
  def change
    create_table :master_colors do |t|
      t.string :colorname

      t.timestamps
    end
  end
end
