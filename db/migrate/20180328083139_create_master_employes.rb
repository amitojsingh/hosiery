class CreateMasterEmployes < ActiveRecord::Migration[5.1]
  def change
    create_table :master_employes do |t|
      t.string :name
      t.string :mobile
      t.text :address

      t.timestamps
    end
  end
end
