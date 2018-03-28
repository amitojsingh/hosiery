class CreateSizemasters < ActiveRecord::Migration[5.1]
  def change
    create_table :sizemasters do |t|
      t.text :size

      t.timestamps
    end
  end
end
