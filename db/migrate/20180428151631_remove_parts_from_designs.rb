class RemovePartsFromDesigns < ActiveRecord::Migration[5.1]
  def change
    remove_column :designs, :parts, :string
  end
end
