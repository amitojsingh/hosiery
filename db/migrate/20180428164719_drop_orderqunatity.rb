class DropOrderqunatity < ActiveRecord::Migration[5.1]
  def change
    drop_table "orderquantities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "size"
      t.integer "quantity"
      t.string "color"
      t.string "piece"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "order_id"
      t.string "number"
    end
  end
end
