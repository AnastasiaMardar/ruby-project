# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Person.create(name: 'Anastasia', surname: 'Mardar', age: 21, phone: '+380983967627', country: 'Ukraine' )
# Person.create(name: 'Anastasia', surname: 'Anastasia', age: 21, phone: '+380983967627', country: 'Ukraine' )
Address.delete_all
Person.delete_all
10.times do
  address = Address.new
  address.street = Faker::Address.street_name
  address.house_number = Faker::Address.building_number
  address.save
  10.times do
    person = Person.new
    person.name = Faker::Name.first_name
    person.surname = Faker::Name.last_name
    person.age = Faker::Number.between(20, 40)
    person.phone = Faker::PhoneNumber.cell_phone
    person.country = Faker::Address.country
    person.address_id = address.id
person.save
end
end
