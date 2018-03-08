
# user1 = User.create(email:"adam@gmail.com",password: "123456", first_name: "adam", last_name:"Sarfati", age: 22, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
# user2 = User.create(email:"adrien@gmail.com",password: "123456", first_name: "adrien", last_name:"Zafiropoulos", age: 27, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
# user3 = User.create(email:"david@gmail.com",password: "123456", first_name: "david", last_name:"Crenin", age: 22, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: false )
# user4 = User.create(email:"vincent@gmail.com",password: "123456", first_name: "Vincent", last_name:"Monneger", age: 22, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: false )
# #

# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(email:"adamsarfat@gmail.com",password: "123456", first_name: "adam", last_name:"Sarfati", age: 22, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
user2 = User.create(email:"adrien@gmail.com",password: "123456", first_name: "adrien", last_name:"Zafiropoulos", age: 27, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
user3 = User.create(email:"david@gmail.com",password: "123456", first_name: "david", last_name:"Crenin", age: 22, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: false )
transporter1 = Transporter.create(car: "Camion", capacity: "Tres grande", permit: "123412345123", cin: "123131234123", user: user1)
transporter2 = Transporter.create(car: "Camion", capacity: "grande", permit: "123410345123", cin: "123331234123", user: user2)


# widths = %w(Petit Moyen Grand)

# widths.each do |width|
#   Width.create(category: width)
# end

# hypotheses = %w(Déménagement Transport)

# hypotheses.each do | hypothese|
#   Hypothese.create(name: hypothese)
# end
# product1 = Product.create!(title: "Canaper", description: "4m x 1.5m", status: 0, aa: "16 villa gaudelet, Paris", ad: "25 place jules ferry", date: "25-03-2017", user: user1, width: 1, date_delivery: "26-03-2017", photo: "http://www.archiexpo.fr/prod/domingolotti/product-57305-1015717.html")
# product2 = Product.create(title: "Canaper", description: "4m x 1.5m", status: 0, aa: "16 villa gaudelet, Paris", ad: "25 place jules ferry", date: "25-03-2017", user: user3, width: Width.first.id, date_delivery: "26-03-2017", photo: "http://www.archiexpo.fr/prod/domingolotti/product-57305-1015717.html")
# product3 = Product.create(title: "Canaper", description: "4m x 1.5m", status: 0, aa: "16 villa gaudelet, Paris", ad: "25 place jules ferry", date: "25-03-2017", user: user3, width_id: Width.first, date_delivery: "26-03-2017", photo: "http://www.archiexpo.fr/prod/domingolotti/product-57305-1015717.html")
# product4 = Product.create(title: "Canaper", description: "4m x 1.5m", status: 0, aa: "16 villa gaudelet, Paris", ad: "25 place jules ferry", date: "25-03-2017", user: user3, width_id: Width.first, date_delivery: "26-03-2017", photo: "http://www.archiexpo.fr/prod/domingolotti/product-57305-1015717.html")
# product5 = Product.create(title: "Canaper", description: "4m x 1.5m", status: 0, aa: "16 villa gaudelet, Paris", ad: "25 place jules ferry", date: "25-03-2017", user: user3, width_id: Width.first, date_delivery: "26-03-2017", photo: "http://www.archiexpo.fr/prod/domingolotti/product-57305-1015717.html")
# product6 = Product.create(title: "Canaper", description: "4m x 1.5m", status: 0, aa: "16 villa gaudelet, Paris", ad: "25 place jules ferry", date: "25-03-2017", user: user3, width_id: Width.first, date_delivery: "26-03-2017", photo: "http://www.archiexpo.fr/prod/domingolotti/product-57305-1015717.html")
# product7 = Product.create(title: "Canaper", description: "4m x 1.5m", status: 0, aa: "16 villa gaudelet, Paris", ad: "25 place jules ferry", date: "25-03-2017", user: user3, width_id: Width.first, date_delivery: "26-03-2017", photo: "http://www.archiexpo.fr/prod/domingolotti/product-57305-1015717.html")
# product8 = Product.create(title: "Canaper", description: "4m x 1.5m", status: 0, aa: "16 villa gaudelet, Paris", ad: "25 place jules ferry", date: "25-03-2017", user: user3, width_id: Width.first, date_delivery: "26-03-2017", photo: "http://www.archiexpo.fr/prod/domingolotti/product-57305-1015717.html")
# offer1 = Offer.create(product_id: product1, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer2 = Offer.create(product_id: product1, transporter_id:transporter1, price: 33, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer3 = Offer.create(product_id: product1, transporter_id:transporter1, price: 43, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer4 = Offer.create(product_id: product2, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer5 = Offer.create(product_id: product2, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer6 = Offer.create(product_id: product2, transporter_id:transporter1, price: 23, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer7 = Offer.create(product_id: product3, transporter_id:transporter1, price: 20, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer8 = Offer.create(product_id: product3, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer9 = Offer.create(product_id: product3, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer10 = Offer.create(product_id: product4, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer11 = Offer.create(product_id: product4, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer12 = Offer.create(product_id: product4, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
