class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.string :Design_name
      t.string :Design_suitsize
      t.string :Design_suittype

      t.timestamps
    end
  end
end
