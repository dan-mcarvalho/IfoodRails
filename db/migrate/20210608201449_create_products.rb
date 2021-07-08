class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :course_name
      t.string :photo
      t.string :description
      t.float :price
      t.string :portion
      t.integer :order_times
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
