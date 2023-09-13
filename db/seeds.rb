# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = {
  name: 'Dishoom',
  address: '7 Boundary St, London E2 7JE',
  phone_number: '+44 20 7253 1100',
  category: 'belgian'
}
pizza_east = {
  name: 'Pizza East',
  address: '56A Shoreditch High St, London E1 6PQ',
  phone_number: '+44 20 3146 8666',
  category: 'italian'
}
paladar = {
  name: 'Paladar',
  address: '5 London Rd, London SE1 6JZ, United Kingdom',
  phone_number: '+44 20 7186 5555',
  category: 'french'
}
machiya = {
  name: 'Machiya',
  address: '5 Panton St, London SW1Y 4DL, United Kingdom',
  phone_number: '+44 20 7925 0333',
  category: 'japanese'
}
hutong = {
  name: 'Hutong',
  address: '33 St Thomas St, London SE1 9RY, United Kingdom',
  phone_number: '+44 20 3011 1257',
  category: 'chinese'
}

[dishoom, pizza_east, paladar, machiya, hutong].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"

  # Review.cerate(content: "Great place!", restaurant: restaurant)
  # puts "Made a review"

end
puts "Finished!"
