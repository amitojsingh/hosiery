class CreateOrderquantities < ActiveRecord::Migration[5.1]
  def change
    create_table :orderquantities do |t|
      t.string :size
      t.integer :quantity
      t.string :color
      t.string :piece

      t.timestamps
    end
  end
end
