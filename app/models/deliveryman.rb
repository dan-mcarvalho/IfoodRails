class Deliveryman < ApplicationRecord
    has_secure_password

    #relações#
    
        
    
    #validações#
    validates :name, :email,:telephone,:birthdate,:cpf,:address,:vehicle_type,:driver_license, presence: true
    validates :email,:cpf, uniqueness: true
    validates :telephone, length: {is: 11}, numericality: {only_integer: true}
    validate :under_age?

    #funções
    def age
        ((Date.today-birthdate).to_i/365.25).to_i
    end

    def under_age?
        if age < 18
            errors.add(:under_age, "Você não tem idade suficiente")
        end
    end

end
