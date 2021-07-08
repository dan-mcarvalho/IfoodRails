class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :wallet
      t.string :telephone
      t.date :birthdate
      t.string :cpf
      t.string :address
      t.string :password_digest

      t.timestamps
    end
  end
end
