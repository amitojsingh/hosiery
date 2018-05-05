class AddLotnumberToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :lotnumber, :string
  end
end
