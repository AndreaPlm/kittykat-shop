class AddReferenceToItem < ActiveRecord::Migration[5.2]
  def change
      add_reference :items, :breed, foreign_key: true
  end
end
