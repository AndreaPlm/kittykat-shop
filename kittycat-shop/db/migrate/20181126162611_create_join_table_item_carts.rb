class CreateJoinTableItemCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_item_carts do |t|
      t.references :cart
      t.references :item

      t.timestamps
    end
  end
end
