class RemoveDesignSuitsizeFromDesign < ActiveRecord::Migration[5.1]
  def change
    remove_column :designs, :design_suitsize, :string
  end
end
