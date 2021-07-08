# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Criar usuario
10.times do 
    User.create(
        name: Faker::Name.name, 
        email: Faker::Internet.email, 
        wallet: 0, 
        telephone: Faker::PhoneNumber.phone_number, 
        birthdate: Faker::Date.between(from: '1970-01-01', to: '2000-01-1'), 
        cpf: Faker::IDNumber.brazilian_id(formatted: true), 
        address: Faker::Address.full_address, 
        password: "123456")
end

#Criar dono de restaurante
#Escolhe um dos usuários já criados para ser dono de restaurante
#Só para fins de testes 
4.times do 
    RestaurantOwner.create(
        name: Faker::Name.name, 
        email: Faker::Internet.email, 
        wallet: 0, 
        telephone: Faker::PhoneNumber.phone_number, 
        birthdate: Faker::Date.between(from: '1970-01-01', to: '2000-01-1'), 
        cpf: Faker::IDNumber.brazilian_id(formatted: true), 
        address: Faker::Address.full_address, 
        password: "123456")
end

#Cria-se 4 restaurantes
4.times do
Restaurant.create(
        name: Faker::Name.name, 
        logo: Faker::LoremPixel.image(size: "50x60"),
        foodtype: "Variados",
        openinghours: "24h",
        address: Faker::Address.full_address, 
        cnpj: Faker::IDNumber.brazilian_id,
        restaurant_owner_id: rand(1..4) 
    )
end

#Cria-se 20 pratos 
20.times do
    Product.create(
            course_name: Faker::Food.dish, 
            photo: Faker::LoremPixel.image(size: "50x60"),
            description: Faker::Food.description,
            price: rand(1..100),
            portion: "Depende da sua fome",
            order_times: rand(1..20),
            restaurant_id: rand(1..4) 
        )
    end