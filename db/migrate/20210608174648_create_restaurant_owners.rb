class CreateRestaurantOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_owners do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.integer :wallet
      t.date :birthdate
      t.string :cpf
      t.string :address
      t.string :password_digest
      t.timestamps
    end
  end
end
