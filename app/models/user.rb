class User < ApplicationRecord
    has_secure_password

    #relações#
    has_many :rate



    #validações#
    validates :name, :email,:telephone,:birthdate,:cpf,:address, presence: true
    validates :email, email: true, uniqueness: true
    validates :cpf, uniqueness: true
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
 

   #conteúdo cart
#class Cart < ApplicationRecord
   # belongs_to :user
   # belongs_to :restaurant
   # has_many :order 

   #t.integer "user_id", null: false
    #t.float "total", default: 0.0
    #t.integer "status"
    #t.boolean "order_taken"
    #t.integer "restaurant_id"
#end

end
