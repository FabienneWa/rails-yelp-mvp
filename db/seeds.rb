# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "063920220", category: 'chinese' }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "063520220", category: 'italian' }
avocado_show = { name: "Avocado Show", address: "Amsterdam", phone_number: "063920224", category: 'french' }
taku = { name: "Taku", address: "Paris", phone_number: "063520244", category: 'japanese' }
lala = { name: "lala", address: "Vienna", phone_number: "063920888", category: 'chinese' }
pizza_brothers = { name: "Pizza Brothers", address: "Miami", phone_number: "222222222", category: 'italian' }

[ dishoom, pizza_east, avocado_show, taku, lala, pizza_brothers].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
