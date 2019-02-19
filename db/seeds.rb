# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Island.destroy_all
Booking.destroy_all

puts 'Creating users...'
bob = User.create(
    email:        'Bob@gmail.com',
    password: "azerty"
  )
nora = User.create(
    email:        'Nora@gmail.com',
    password: "azerty1"
  )
mathieu = User.create(
    email:        'Mathieu@gmail.com',
    password: "azerty2"
  )
philippe = User.create(
    email: 'philou@gmail.com',
    password: "azerty3"
  )
romain = User.create(
    email: 'romain@gmail.com',
    password: "azerty4"
  )


puts 'Creating islands...'
palau = Island.create(
  name:     "Palau",
  location: "Micronésie",
  availability: "libre",
  capacity: 10,
  price: 1000,
  user: bob
  )
castaway = Island.create(
    name:     "Castaway Cay",
    location: "Bahamas",
    availability: "libre",
    capacity: 15,
    price: 500,
    user: bob
  )
na = Island.create(
    name:     "Na Mokulua",
    location: "Hawaï",
    availability: "occupée",
    capacity: 5,
    price: 800,
    user: bob
  )

# puts 'Creating bookings...'
# booking_1 = Booking.create(
#   start_date: 01/07/2019,
#   ending_date: 10/07/2019,
#   user: nora,
#   island: castaway,
#   total_price: 5000
#   )


puts 'Finished!'
