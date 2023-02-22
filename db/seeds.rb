# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
chinese_place = {name: "Chinese Place", address: "7 Boundary St, London E2 7JE", phone_number: 123456978, category: "chinese"}
italian_place = {name: "Italian Place", address: "7 Boundary St, London E2 7JE", phone_number: 123456978, category: "italian"}
japanese_place = {name: "Japanese Place", address: "7 Boundary St, London E2 7JE", phone_number: 123456978, category: "japanese"}
french_place = {name: "French Place", address: "7 Boundary St, London E2 7JE", phone_number: 123456978, category: "french"}
belgian_place = {name: "Belgian Place", address: "7 Boundary St, London E2 7JE", phone_number: 123456978, category: "belgian"}
[chinese_place, italian_place, french_place, belgian_place, japanese_place].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
