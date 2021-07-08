class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :logo
      t.string :foodtype
      t.string :openinghours
      t.string :address
      t.string :cnpj
      t.references :restaurant_owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
