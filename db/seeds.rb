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
baguette = { name: "Baguette", address: "87 Boundary St, Paris E2 7JE", phone_number: "06 87 65 45 23", category: "french" }
pizza_east =  { name: "Pizza East", address: "88 Shoreditch High St, Roma E1 6PQ", phone_number: "06 88 65 45 23", category: "italian" }
quick =  { name: "Quick", address: "89 Shoreditch High St, Belgium E1 6PQ", phone_number: "06 89 65 45 23", category: "belgian" }
nems =  { name: "Nems", address: "90 Shoreditch High St, China E1 6PQ", phone_number: "06 90 65 45 23", category: "chinese" }
sushi =  { name: "Sushi", address: "91 Shoreditch High St, Japan E1 6PQ", phone_number: "06 91 65 45 23", category: "japanese" }

[ baguette, pizza_east, quick, nems, sushi ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"