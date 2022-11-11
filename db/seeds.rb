# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts 'Creating Flats...'
100.times do
  flat = Flat.create(
    name: Faker::Ancient.hero,
    address: Faker::Address.street_address,
    description: Faker::Books::CultureSeries.culture_ship,
    price_per_night: rand(30..100),
    number_of_guests: rand(1..10)
  )
  puts "Flat with id: #{flat.id} has been created"
end
puts 'Finished!'
