# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email:" adam@gmail.com",password: "123456", first_name: "adam", last_name:"Sarfati", age: 22, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
user2 = User.create(email:" adrien@gmail.com",password: "123456", first_name: "adrien", last_name:"Zafiropoulos", age: 27, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
user3 = User.create(email:" david@gmail.com",password: "123456", first_name: "david", last_name:"Crenin", age: 22, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: false )
user4 = User.create(email:" vincent@gmail.com",password: "123456", first_name: "Vincent", last_name:"Monneger", age: 22, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: false )

transporter1 = Transporter.create(car: "Camion", capacity: "Tres grande", permit: "123412345123", cin: "123131234123", user_id: user1)
transporter2 = Transporter.create(car: "Camion", capacity: "grande", permit: "123410345123", cin: "123331234123", user_id: user2)

