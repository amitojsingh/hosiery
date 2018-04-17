class RemoveNumberToOrder < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :number, :string
  end
end
