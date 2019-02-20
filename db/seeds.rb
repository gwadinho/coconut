# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Booking.destroy_all
Island.destroy_all
User.destroy_all


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

symi = Island.create(
    name:     "Symi",
    location: "Greece",
    availability: "libre",
    capacity: 15,
    price: 1500,
    user: bob
  )

cozumel = Island.create(
    name:     "cozumel",
    location: "Mexico",
    availability: "libre",
    capacity: 10,
    price: 1000,
    user: bob
  )

atoll = Island.create(
    name:     "Atoll d'Ari",
    location: "Maldives",
    availability: "occupée",
    capacity: 5,
    price: 400,
    user: bob
  )

koh = Island.create(
    name:     "Koh Lipe",
    location: "Thailand",
    availability: "libre",
    capacity: 10,
    price: 800,
    user: bob
  )

nacula = Island.create(
    name:     "Nacula Island",
    location: "Fidji Island",
    availability: "libre",
    capacity: 4,
    price: 800,
    user: bob
  )

san = Island.create(
    name:     "San Blas",
    location: "Panama",
    availability: "libre",
    capacity: 10,
    price: 1000,
    user: bob
  )

whitsundays = Island.create(
    name:     "Whitsundays Island",
    location: "Australia",
    availability: "occupée",
    capacity: 12,
    price: 1200,
    user: bob
  )

boracay = Island.create(
    name:     "Boracay",
    location: "Philipines",
    availability: "libre",
    capacity: 8,
    price: 800,
    user: bob
  )

pehrentian = Island.create(
    name:     "Pehrentian",
    location: "Malaysia",
    availability: "libre",
    capacity: 4,
    price: 800,
    user: bob
  )

komodo = Island.create(
    name:     "Komodo",
    location: "Indonesia",
    availability: "libre",
    capacity: 10,
    price: 500,
    user: bob
  )

nicobar = Island.create(
    name:     "Nicobar Island",
    location: "India",
    availability: "libre",
    capacity: 12,
    price: 800,
    user: bob
  )

gili = Island.create(
    name:     "Gili Islands",
    location: "Indonesia",
    availability: "libre",
    capacity: 10,
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
