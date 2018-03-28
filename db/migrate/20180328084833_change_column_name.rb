class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
       rename_column :master_types, :type, :suit_variety
  end
end
