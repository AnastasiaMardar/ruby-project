# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Person.create(name: 'Anastasia', surname: 'Mardar', age: 21, phone: '+380983967627', country: 'Ukraine' )
# Person.create(name: 'Anastasia', surname: 'Anastasia', age: 21, phone: '+380983967627', country: 'Ukraine' )
 10.times do
   Person.create(
     name: Faker::Name.first_name ,
     surname: Faker::Name.last_name,
     age: Faker::Number.between(20, 40),
     phone: Faker::PhoneNumber.cell_phone,
     country: Faker::Nation.capital_city
   )
 end
