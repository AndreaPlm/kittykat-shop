class CreateItemOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :item_orders do |t|
      t.integer :quantity
      t.references :order
      t.references :item

      t.timestamps 
    end
  end
end
