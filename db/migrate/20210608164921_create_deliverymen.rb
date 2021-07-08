class CreateDeliverymen < ActiveRecord::Migration[6.1]
  def change
    create_table :deliverymen do |t|
      t.string :name
      t.string :email
      t.integer :wallet
      t.string :telephone
      t.date   :birthdate
      t.string :cpf
      t.string :address
      t.string :vehicle_type
      t.string :driver_license
      t.string :delivery_active
      t.string :email_active
      t.string :password_digest

      t.timestamps
    end
  end
end
