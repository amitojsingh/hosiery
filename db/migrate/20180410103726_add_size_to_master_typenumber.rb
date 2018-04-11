class AddSizeToMasterTypenumber < ActiveRecord::Migration[5.1]
  def change
    add_column :master_typenumbers, :size, :string
  end
end
