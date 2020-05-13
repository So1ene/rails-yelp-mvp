# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.cell_phone
  restaurant = Restaurant.create(
    name: name,
    address: address,
    phone_number: phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  rand(3..10).times do
    rating = rand(0..5)
    content = Faker::Restaurant.review
    Review.create(
      rating: rating,
      content: content,
      restaurant: restaurant
    )
  end
end
