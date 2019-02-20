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

url_palau = "https://res.cloudinary.com/romscloud/image/upload/v1550662148/Palau.jpg"
palau.remote_photo_url = url_palau
palau.save

castaway = Island.create(
    name:     "Castaway Cay",
    location: "Bahamas",
    availability: "libre",
    capacity: 15,
    price: 500,
    user: bob
  )

url_castaway = "https://res.cloudinary.com/romscloud/image/upload/v1550662149/castaway.jpg"
castaway.remote_photo_url = url_castaway
castaway.save

na = Island.create(
    name:     "Na Mokulua",
    location: "Hawaï",
    availability: "occupée",
    capacity: 5,
    price: 800,
    user: bob
  )

url_na = "https://res.cloudinary.com/romscloud/image/upload/v1550662148/Na_Mokulua.jpg"
na.remote_photo_url = url_na
na.save

symi = Island.create(
    name:     "Symi",
    location: "Greece",
    availability: "libre",
    capacity: 15,
    price: 1500,
    user: bob
  )

url_symi = "https://res.cloudinary.com/romscloud/image/upload/v1550662171/symi.jpg"
symi.remote_photo_url = url_symi
symi.save

cozumel = Island.create(
    name:     "cozumel",
    location: "Mexico",
    availability: "libre",
    capacity: 10,
    price: 1000,
    user: bob
  )

url_cozumel = "https://res.cloudinary.com/romscloud/image/upload/v1550660404/cozumel.jpg"
cozumel.remote_photo_url = url_cozumel
cozumel.save


atoll = Island.create(
    name:     "Atoll d'Ari",
    location: "Maldives",
    availability: "occupée",
    capacity: 5,
    price: 400,
    user: bob
  )

url_atoll = "https://res.cloudinary.com/romscloud/image/upload/v1550660403/Atoll_d_Ari.jpg"
atoll.remote_photo_url = url_atoll
atoll.save


koh = Island.create(
    name:     "Koh Lipe",
    location: "Thailand",
    availability: "libre",
    capacity: 10,
    price: 800,
    user: bob
  )

url_koh = "https://res.cloudinary.com/romscloud/image/upload/v1550660403/Koh_Lipe.jpg"
koh.remote_photo_url = url_koh
koh.save


nacula = Island.create(
    name:     "Nacula Island",
    location: "Fidji Island",
    availability: "libre",
    capacity: 4,
    price: 800,
    user: bob
  )

url_nacula = "https://res.cloudinary.com/romscloud/image/upload/v1550660404/Nacula_Island.jpg"
nacula.remote_photo_url = url_nacula
nacula.save


san = Island.create(
    name:     "San Blas",
    location: "Panama",
    availability: "libre",
    capacity: 10,
    price: 1000,
    user: bob
  )

url_san = "https://res.cloudinary.com/romscloud/image/upload/v1550660404/San_Blas.png"
san.remote_photo_url = url_san
san.save


whitsundays = Island.create(
    name:     "Whitsundays Island",
    location: "Australia",
    availability: "occupée",
    capacity: 12,
    price: 1200,
    user: bob
  )

url_whitsundays = "https://res.cloudinary.com/romscloud/image/upload/v1550660406/Whitsundays_Island.jpg"
whitsundays.remote_photo_url = url_whitsundays
whitsundays.save


boracay = Island.create(
    name:     "Boracay",
    location: "Philipines",
    availability: "libre",
    capacity: 8,
    price: 800,
    user: bob
  )

url_boracay = "https://res.cloudinary.com/romscloud/image/upload/v1550660403/Boracay.jpg"
boracay.remote_photo_url = url_boracay
boracay.save


pehrentian = Island.create(
    name:     "Pehrentian",
    location: "Malaysia",
    availability: "libre",
    capacity: 4,
    price: 800,
    user: bob
  )

url_pehrentian = "https://res.cloudinary.com/romscloud/image/upload/v1550660404/Pehrentian.jpg"
pehrentian.remote_photo_url = url_pehrentian
pehrentian.save


komodo = Island.create(
    name:     "Komodo",
    location: "Indonesia",
    availability: "libre",
    capacity: 10,
    price: 500,
    user: bob
  )

url_komodo = "https://res.cloudinary.com/romscloud/image/upload/v1550660403/Komodo.jpg"
komodo.remote_photo_url = url_komodo
komodo.save


nicobar = Island.create(
    name:     "Nicobar Island",
    location: "India",
    availability: "libre",
    capacity: 12,
    price: 800,
    user: bob
  )

url_nicobar = "https://res.cloudinary.com/romscloud/image/upload/v1550660404/Nicobar_Island.jpg"
nicobar.remote_photo_url = url_nicobar
nicobar.save


gili = Island.create(
    name:     "Gili Islands",
    location: "Indonesia",
    availability: "libre",
    capacity: 10,
    price: 800,
    user: bob
  )

url_gili = "https://res.cloudinary.com/romscloud/image/upload/v1550660403/Gili_Islands.jpg"
gili.remote_photo_url = url_gili
gili.save

# puts 'Creating bookings...'
# booking_1 = Booking.create(
#   start_date: 01/07/2019,
#   ending_date: 10/07/2019,
#   user: nora,
#   island: castaway,
#   total_price: 5000
#   )


puts 'Finished!'
