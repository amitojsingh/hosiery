class CreateMasterTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :master_tasks do |t|
      t.string :taskname

      t.timestamps
    end
  end
end
