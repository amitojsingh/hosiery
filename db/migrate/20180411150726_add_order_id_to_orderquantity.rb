class AddOrderIdToOrderquantity < ActiveRecord::Migration[5.1]
  def change
  add_column :orderquantities, :order_id,:integer
  end
end
