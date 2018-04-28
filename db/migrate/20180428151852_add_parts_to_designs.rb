class AddPartsToDesigns < ActiveRecord::Migration[5.1]
  def change
    add_column :designs, :parts, :text, array:true
  end
end
