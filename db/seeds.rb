# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
10.times do
    city = City.create(
        name: Faker::Nation.capital_city,
        zip_code: Faker::Address.zip_code
    )
end

User.destroy_all
10.times do
    user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        description: Faker::Hipster.sentence,        
        age: rand(18..124),
        city: City.all.sample
    )
    user.email = Faker::Internet.free_email(name: "%#{user.first_name}%"),
end

