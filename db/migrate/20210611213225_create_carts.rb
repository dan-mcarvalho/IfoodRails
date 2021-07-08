class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.float :total
      t.integer :status , default: 0
      t.boolean :order_taken

      t.timestamps
    end
  end
end
