class AddNumberToOrderquantity < ActiveRecord::Migration[5.1]
  def change
    add_column :orderquantities, :number, :string
  end
end
