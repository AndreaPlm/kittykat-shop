# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do
breed = Breed.create(name: Faker::Cat.breed)
end

20.times do
  item = Item.create(title: Faker::Cat.name, breed_id: rand(1..10), description: Faker::Lorem.paragraph(10), price: Faker::Number.decimal(2), image_url: "http://placekitten.com/300/300")
end

#20.times do
#  user = User.create(email: Faker::Internet.email, password: Faker::Color.color_name)
#end

#20.times do
#  order = Order.create(user_id: rand(1..20))
#end
