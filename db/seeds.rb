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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "1", category: "french" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "2", category: "italian" }
chinese_xi = { name: "Xia Lin", address: "650 Green St, London", phone_number: "3", category: "chinese" }
belgian_bu = { name: "Rest Belgian", address: "78 Blue St, London", phone_number: "4", category: "belgian" }
japan_food = { name: "Nokogiri", address: "780 Gem St, London", phone_number: "5", category: "japanese" }

[ dishoom, pizza_east, chinese_xi, belgian_bu, japan_food ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
2