class CreateTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.string :suit_type
      t.integer :start_limit
      t.integer :end_limit

      t.timestamps
    end
  end
end
