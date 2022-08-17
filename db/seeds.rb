# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating 5 records...'

5.times do
  restaurant = Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  5.times do
    restaurant.reviews.create(
      content: Faker::RickAndMorty.quote,
      rating: (0..5).to_a.sample
    )
  end
end
