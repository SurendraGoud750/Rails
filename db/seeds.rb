# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


   Hotel.create([{ name: "Hotel-1", location: 'Indore' }, { name: "Hotel-2", location: 'Pune' },
    { name: "Hotel-3", location: 'Banglore' }, { name: "Hotel-4", location: 'Dehli' },
    { name: "Hotel-4", location: 'Bhopal' }, { name: "Hotel-5", location: 'Mumbai' }])

    (1..6).map do |num|
      HotelRoom.create([{ name_of_room: "A-#{num}", hotel_id:  num},{ name_of_room: "B-#{num}", hotel_id:  num}, 
      	{ name_of_room: "C-#{num}", hotel_id:  num}, { name_of_room: "D-#{num}", hotel_id:  num},
        { name_of_room: "E-#{num}", hotel_id:  num }])
    end


    User.create({email: "example@gmail.com", username: "John"})

    