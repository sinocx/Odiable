p "starting destroy all products"
Product.destroy_all
p "all products destroyed"


p "starting destroy all Widths"
Width.destroy_all
p "all widths destroyed"


p "starting destroy all Hypotheses"
Hypothese.destroy_all
p "all hypotheses destroyed"


p "starting destroy all offers"
Offer.destroy_all
p "all offers destroyed"


p "starting orders all products"
Order.destroy_all
p "all orders destroyed"


p "starting destroy all transporters"
Transporter.destroy_all
p "all transporters destroyed"


p "starting destroy all users"
User.destroy_all
p "all users destroyed"


# user1 = User.create(email:"adam@gmail.com",password: "123456", first_name: "adam", last_name:"Sarfati", age: 22, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
# user2 = User.create(email:"adrien@gmail.com",password: "123456", first_name: "adrien", last_name:"Zafiropoulos", age: 27, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
# user3 = User.create(email:"david@gmail.com",password: "123456", first_name: "david", last_name:"Crenin", age: 22, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: false )
# user4 = User.create(email:"vincent@gmail.com",password: "123456", first_name: "Vincent", last_name:"Monneger", age: 22, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: false )
# #

# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

p "starting creating all users"
user1 = User.new(email:"adam@gmail.com",password: "123456", first_name: "Adam", last_name:"Sarfati", age: 22, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
user1.remote_photo_url ="https://avatars1.githubusercontent.com/u/34542613?s=460&v=4"
user1.save!

user2 = User.new(email:"adrien@gmail.com",password: "123456", first_name: "Adrien", last_name:"Zafiropoulos", age: 27, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
user2.remote_photo_url ="https://avatars2.githubusercontent.com/u/30799436?s=460&v=4"
user2.save!

user3 = User.new(email:"david@gmail.com",password: "123456", first_name: "David", last_name:"Crenin", age: 22, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: false )
user3.remote_photo_url ="https://avatars2.githubusercontent.com/u/33879637?s=460&v=4"
user3.save!

user4 = User.new(email:"vincent@gmail.com",password: "123456", first_name: "Vincent", last_name:"Monneger", age: 22, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: false )
user4.remote_photo_url ="https://avatars2.githubusercontent.com/u/33717023?s=460&v=4"
user4.save!

user5 = User.new(email:"maxime@gmail.com",password: "123456", first_name: "Maxime", last_name:"Viard", age: 32, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: true )
user5.remote_photo_url ="https://avatars2.githubusercontent.com/u/34567125?s=460&v=4"
user5.save!

user6 = User.new(email:"lamia@gmail.com",password: "123456", first_name: "Lamia", last_name:"Mamlouk", age: 38, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: true )
user6.remote_photo_url ="https://avatars1.githubusercontent.com/u/9314769?s=460&v=4"
user6.save!


p "user create"
# user1 = User.create(email:"adamsarfat@gmail.com",password: "123456", first_name: "adam", last_name:"Sarfati", age: 22, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
# user2 = User.create(email:"adrien@gmail.com",password: "123456", first_name: "adrien", last_name:"Zafiropoulos", age: 27, description: "Bonjour, transporter d'objet encombant depuis des années je disposes d'un camion pouvant sockter vos objets les plus imposant", transporter: true )
# user3 = User.create(email:"david@gmail.com",password: "123456", first_name: "david", last_name:"Crenin", age: 22, description: "Bonjour, disposant souvent d'objet encombrant, je suis a la recherche d'une personne pouvant deplacer mes objets frequemment", transporter: false )
p "transporter debut"
transporter1 = Transporter.create!(car: "Camion", capacity: "Tres grande", permit: "123412345123", cin: "123131234123", user: user1)
transporter2 = Transporter.create!(car: "Camion", capacity: "grande", permit: "123410345123", cin: "123331234123", user: user2)
transporter5 = Transporter.create!(car: "Camion", capacity: "Tres grande", permit: "123412345123", cin: "123131234123", user: user5)
transporter6 = Transporter.create!(car: "Camion", capacity: "grande", permit: "123410345123", cin: "123331234123", user: user6)
p "transporter fin"
p "width debut"
widths = %w(Petit Moyen Grand)

widths.each do |width|
  Width.create!(category: width)
end
p "width fin"
p "hypotheses"
hypotheses = %w(Déménagement Transport)

hypotheses.each do | hypothese|
  Hypothese.create!(name: hypothese)
end
p  "hypotheses fin"
p  "product debut"
product20 = Product.new(user: user4 , title: "Enceintes", description:"J'habite dans une maison, pas d'escalier", status: 0,  aa: "15 Boulevard de Magenta, 75010 Paris", ad: "12 Rue Voltaire, 92300 Levallois-Perret", date: "23-03-2018", date_delivery:"27-03-2018", width: Width.order("RANDOM()").first)
product20.remote_photo_url = "https://images.unsplash.com/photo-1507245921392-e902673ca772?ixlib=rb-0.3.5&s=f340bd956d2c846a52bbaa4af2408cde&auto=format&fit=crop&w=750&q=80"
product20.save!

product19 = Product.new(user: user4 , title: "Fauteuil", description:"J'ai un ascenseur", status: 0,  aa: "12 Rue Ernest Renan, 94700 Maisons-Alfort", ad: "12 Avenue Léonard de Vinci, 92400 Courbevoie", date: "27-03-2017", date_delivery:"11-04-2017", width: Width.order("RANDOM()").first)
product19.remote_photo_url = "https://images.unsplash.com/photo-1464029902023-f42eba355bde?ixlib=rb-0.3.5&s=511e728f907ae4d4580bc4f8a5eee6b5&auto=format&fit=crop&w=750&q=80"
product19.save!

product18 = Product.new(user: user4 , title: "Lit", description:"J'habite au 1ère étage dans une maison", status: 0,  aa: "8 Passage Cardinet, 75017 Paris", ad: "39 Rue du Moulin des Bruyères, 92400 Courbevoie", date: "01-04-2018", date_delivery:"08-04-2018", width: Width.order("RANDOM()").first)
product18.remote_photo_url = "https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?ixlib=rb-0.3.5&s=bd8ed8308a093982ab2764855a014565&auto=format&fit=crop&w=750&q=80"
product18.save!

product17 = Product.new(user: user4 , title: "Télévision", description:"J'habite dans une maison, pas d'escalier, 1m30", status: 0,  aa: "106 Rue Brancion, 75015 Paris", ad: "51 Rue de Bercy, 75012 Paris", date: "27-03-2018", date_delivery:"31-03-2018", width: Width.order("RANDOM()").first)
product17.remote_photo_url = "https://images.unsplash.com/photo-1467293622093-9f15c96be70f?ixlib=rb-0.3.5&s=aa4a27d58bcdac27a7ff4f1078c9065d&auto=format&fit=crop&w=750&q=80"
product17.save!

product16 = Product.new(user: user4 , title: "Cafetière", description:"Aucun étage, pas d'escalier", status: 0,  aa: "1 Rue Henri Becquerel, 92140 Clamart", ad: "28 Rue de Sèvres, 92100 Boulogne-Billancourt", date: "29-03-2018", date_delivery:"31-03-2018", width: Width.order("RANDOM()").first)
product16.remote_photo_url = "https://images.unsplash.com/photo-1421986598195-0d9c26ecfcde?ixlib=rb-0.3.5&s=2b63ac340a49b26360f1ec0aa831b4cb&auto=format&fit=crop&w=755&q=80"
product16.save!

product21 = Product.new(user: user4 , title: "Lave Linge", description:"2ème sans ascenceur, je cherche quelqu'un pour le soulever", status: 0,  aa: "31 Avenue George V, 75008 Paris", ad: "61 Avenue de l'Observatoire, 75014 Paris", date: "24-04-2018", date_delivery:"26-04-2018", width: Width.order("RANDOM()").first)
product21.remote_photo_url = "https://images.unsplash.com/photo-1510551310160-589462daf284?ixlib=rb-0.3.5&s=fe0a494ce7183071934f6499a6e836c0&auto=format&fit=crop&w=749&q=80"
product21.save!

product22 = Product.new(user: user4 , title: "Canapé", description:"J'ai un ascenseur, si possible me le déplacer", status: 0,  aa: "50 Rue du Sergent Bobillot, 93100 Montreuil", ad: "17 Rue Geoffroy l'Asnier, 75004 Paris", date: "30-03-2018", date_delivery:"04-04-2018", width: Width.order("RANDOM()").first)
product22.remote_photo_url = "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-0.3.5&s=6286e40d53d85d1fe9fb0f2fae05c173&auto=format&fit=crop&w=750&q=80"
product22.save!

product23 = Product.new(user: user4 , title: "Bureau", description:"J'habite au 1er sans ascenceur, mon bureau mesure 2m", status: 0,  aa: "5 Rue de Belzunce, 75010 Paris", ad: "2 Rue Palatine, 75006 Paris", date: "28-03-2018", date_delivery:"31-03-2018", width: Width.order("RANDOM()").first)
product23.remote_photo_url = "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-0.3.5&s=6286e40d53d85d1fe9fb0f2fae05c173&auto=format&fit=crop&w=750&q=80"
product23.save!

product24 = Product.new(user: user4 , title: "Four", description:"Je descends mon four, je veux juste transport, 1m30x1m", status: 0,  aa: "21 Boulevard Morland, 75004 Paris", ad: "34 Rue Yves Toudic, 75010 Paris", date: "26-03-2018", date_delivery:"30-03-2018", width: Width.order("RANDOM()").first)
product24.remote_photo_url = "https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-0.3.5&s=e6edcd5ea442e1089709a0874788291d&auto=format&fit=crop&w=753&q=80"
product24.save!

product25 = Product.new(user: user4 , title: "Piano", description:"Pas d'escalier, besoin d'aide pour déplacement", status: 0,  aa: "247 Rue de Crimée, 75019 Paris", ad: "16 Rue Chaptal, 75009 Paris", date: "27-03-2018", date_delivery:"30-03-2018", width: Width.order("RANDOM()").first)
product25.remote_photo_url = "https://images.unsplash.com/photo-1464288550599-43d5a73451b8?ixlib=rb-0.3.5&s=3f0d45456ee7532d6aa7345ad16cffa0&auto=format&fit=crop&w=772&q=80"
product25.save!

product26 = Product.new(user: user4 , title: "Bureau", description:"Juste transport, table de 1m80", status: 0,  aa: "24 Rue du Faubourg Saint-Honoré, 75008 Paris", ad: "224 Boulevard Saint-Germain, 75007 Paris", date: "01-04-2018", date_delivery:"03-04-2018", width: Width.order("RANDOM()").first)
product26.remote_photo_url = "https://images.unsplash.com/photo-1497864768494-78100d1ddf01?ixlib=rb-0.3.5&s=6dd22ad7d4037f960390bd415b150d2c&auto=format&fit=crop&w=750&q=80"
product26.save!

product27 = Product.new(user: user4 , title: "Lit", description:"J'habite au 2ème sans ascenceur, lit de 3mx3m", status: 0,  aa: "29 Rue de la Croix Blanche, 33074 Bordeaux", ad: "18 Cours Barbey, 33800 Bordeaux", date: "26-03-2018", date_delivery:"28-03-2018", width: Width.order("RANDOM()").first)
product27.remote_photo_url = "https://images.unsplash.com/photo-1509647924673-bbb53e22eeb8?ixlib=rb-0.3.5&s=016886bfd18a41d5d6fd59df82b21741&auto=format&fit=crop&w=747&q=80"
product27.save!

product28 = Product.new(user: user4 , title: "Chaises", description:"Juste transport", status: 0,  aa: "160 Rue de Saint- Genès, 33000 Bordeaux", ad: "7 Rue Ferrere, 33000 Bordeaux", date: "27-03-2018", date_delivery:"31-03-2018", width: Width.order("RANDOM()").first)
product28.remote_photo_url = "https://images.unsplash.com/photo-1509647924673-bbb53e22eeb8?ixlib=rb-0.3.5&s=016886bfd18a41d5d6fd59df82b21741&auto=format&fit=crop&w=747&q=80"
product28.save!

product29 = Product.new(user: user4 , title: "Plante", description:"Juste transport", status: 0,  aa: "95 Cours Maréchal Juin, 33000 Bordeaux", ad: "45 Cours Marechal Gallieni, 33000 Bordeaux", date: "26-03-2018", date_delivery:"31-03-2018", width: Width.order("RANDOM()").first)
product29.remote_photo_url = "https://images.unsplash.com/photo-1446057468532-87b7525217d6?ixlib=rb-0.3.5&s=2520abd7d797b3b85f7bae2c1a79a89d&auto=format&fit=crop&w=751&q=80"
product29.save!

product30 = Product.new(user: user4 , title: "Commode", description:"Juste transport, 1m50 de long", status: 0,  aa: "16 Rue de Tivoli, 33000 Bordeaux", ad: "114 Avenue d'Arès, 33200 Bordeaux", date: "27-03-2018", date_delivery:"31-03-2018", width: Width.order("RANDOM()").first)
product30.remote_photo_url = "https://images.unsplash.com/photo-1520106392146-ef585c111254?ixlib=rb-0.3.5&s=b05812d01e603a070398ac44f0ca7ed2&auto=format&fit=crop&w=1312&q=80"
product30.save!

product1 = Product.new(user: user3, title: "Canapé", description:"J'habite au 5ème sans ascenceur, il faudra le monter au 1er étage à l'arrivée", status: 0,  aa: "12 Rue de Rivoli, 75004 Paris", ad: "16 villa gaudelet, Paris", date: "26-03-2018", date_delivery:"30-03-2018", width: Width.order("RANDOM()").first)
product1.remote_photo_url = "https://i.pinimg.com/564x/b3/f0/32/b3f0326ab63050da8f3d83ecac036e63.jpg"
product1.save!

product2 = Product.new(user: user3 , title: "Banc orange", description:"Possibilité de démonter le banc, il pèse 40kg. Je suis au 2ème étage.", status: 0,  aa: "67 Rue Bichat, 75010 Paris", ad: "Rue de Tolbiac, 75013 Paris", date: "27-03-2018", date_delivery:"28-03-2018", width: Width.order("RANDOM()").first)
product2.remote_photo_url = "https://images.unsplash.com/photo-1492433483212-7b3e7e53e6d9?ixlib=rb-0.3.5&s=3710dacd007a0b70b92a697dc0674aa2&auto=format&fit=crop&w=750&q=80"
product2.save!

product3 = Product.new(user: user3 , title: "2 chaises ", description:"J'habite au RDC, et il faut les monter au 3ème. Ces chaises mesurent 130cm de haut, 100cm de largeur et 80 c de profondeur.", status: 0,  aa: "71 Rue du Faubourg Poissonnière, 75009 Paris", ad: "90 Rue des Entrepreneurs, 75015 Paris", date: "28-03-2018", date_delivery:"31-03-2018", width: Width.order("RANDOM()").first)
product3.remote_photo_url = "https://images.unsplash.com/photo-1493150134366-cacb0bdc03fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d98494c50eba8a4b8ccb965288cfa490&auto=format&fit=crop&w=750&q=80"
product3.save!

product4 = Product.new(user: user3 , title: "3 Caméra photo", description:"les 3 appareils sont dans un carton de 30x40x70cm", status: 0,  aa: "12 Rue de Rivoli, 75004 Paris", ad: "30 Rue Legendre, 75017 Paris", date: "26-03-2018", date_delivery:"28-03-2018", width: Width.order("RANDOM()").first)
product4.remote_photo_url = "https://images.unsplash.com/photo-1515469796227-05ae4d8241a5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=aebcdad248e83a31bfd460d55d522e91&auto=format&fit=crop&w=750&q=80"
product4.save!

product5 = Product.new(user: user3 , title: "Vélo", description:"Vélo de 11kg", status: 0,  aa: "57 Rue des Dames, 75017 Paris", ad: "19 Rue Duphot, 75001 Paris", date: "26-03-2018", date_delivery:"27-03-2018", width: Width.order("RANDOM()").first)
product5.remote_photo_url = "https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=51a9aa4dd828bf5d50fcd8154dc405b8&auto=format&fit=crop&w=1350&q=80"
product5.save!

product6 = Product.new(user: user3 , title: "Canapé", description:"Canapé très lourd. J'habite au 5ème sans ascenceur. ", status: 0,  aa: "30 Rue Muller, 75018 Paris", ad: "111 Rue Réaumur, 75002 Paris", date: "26-03-2018", date_delivery:"29-03-2018", width: Width.order("RANDOM()").first)
product6.remote_photo_url = "https://images.unsplash.com/photo-1512212621149-107ffe572d2f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f519fdb3efb21268177aa5689cde280f&auto=format&fit=crop&w=759&q=80"
product6.save!

product7 = Product.new(user: user3 , title: "Chaise", description:"J'habite au 5ème sans ascenceur, il faudra le monter au 1er étage à l'arrivée", status: 0,  aa: "112 Rue Caulaincourt, 75018 Paris", ad: "91 Boulevard Beaumarchais, 75003 Paris", date: "18-03-2018", date_delivery:"24-03-2018", width: Width.order("RANDOM()").first)
product7.remote_photo_url = "https://images.unsplash.com/photo-1496154077138-22d8a3b92e8b?ixlib=rb-0.3.5&s=1efa08934af3c5bce39d2d7bdf0560f8&auto=format&fit=crop&w=1350&q=80"
product7.save!

product8 = Product.new(user: user3 , title: "Table de platine", description:"table de platine légère", status: 0,  aa: "115 Avenue Jean Jaurès, 75019 Paris", ad: "105 Rue Saint-Antoine, 75004 Paris", date: "18-03-2018", date_delivery:"31-03-2018", width: Width.order("RANDOM()").first)
product8.remote_photo_url = "https://i.pinimg.com/564x/6e/24/c9/6e24c9beaa14c3cf18ccabc74e9d1c33.jpg"
product8.save!

product9 = Product.new(user: user3 , title: "Meuble en bois", description:"Le meuble sera vide, il se porte facilement. Je suis au 2ème et il faudra le monter au 4ème à l'arrivée.", status: 0,  aa: "88 Boulevard de Belleville, 75020 Paris", ad: "47 Rue Gay-Lussac, 75005 Paris", date: "19-03-2018", date_delivery:"30-03-2018", width: Width.order("RANDOM()").first)
product9.remote_photo_url = "https://i.pinimg.com/564x/85/38/17/853817156297f5c8b9939bf697eb8961.jpg"
product9.save!

product10 = Product.new(user: user3 , title: "Table bureau", description:"L 120cm P 65cm H 700 cm", status: 0,  aa: "263 Chemin du Vallon de l'Oriol, 13007 Marseille", ad: "120 Corniche du Président John F Kennedy, 13007 Marseille", date: "24-03-2018", date_delivery:"29-03-2018", width: Width.order("RANDOM()").first)
product10.remote_photo_url = "https://i.pinimg.com/564x/97/7f/99/977f99112551b02cb9684e75c3c7d210.jpg"
product10.save!
p "fin product"

# product11 = Product.new(user: user3 , title: "Canapé", description:"J'habite au 5ème sans ascenceur, il faudra le monter au 1er étage à l'arrivée", status: 0,  aa: "14 Rue du Ruisseau, 75018 Paris", ad: "19 Rue de Castellane, 75008 Paris", date: "26-03-2018", date_delivery:"31-03-2018", width: Width.order("RANDOM()").first)
# product11.remote_photo_url = "https://unsplash.com/photos/yEuEHQdLLEc"
# product11.save!

# product12 = Product.new(user: user3 , title: "Canapé", description:"J'habite au 5ème sans ascenceur, il faudra le monter au 1er étage à l'arrivée", status: 0,  aa: "74 Boulevard des Batignolles, 75017 Paris", ad: "72 Rue de Rochechouart, 75009 Paris", date: "26-03-2018", date_delivery:"29-03-2018", width: Width.order("RANDOM()").first)
# product12.remote_photo_url = "https://unsplash.com/photos/yEuEHQdLLEc"
# product12.save!

# product13 = Product.new(user: user3 , title: "Canapé", description:"J'habite au 5ème sans ascenceur, il faudra le monter au 1er étage à l'arrivée", status: 0,  aa: "81 Rue Jean de la Fontaine, 75016 Paris", ad: "74 Rue du Faubourg Saint-Denis, 75010 Paris", date: "23-03-2018", date_delivery:"26-03-2018", width: Width.order("RANDOM()").first)
# product13.remote_photo_url = "https://unsplash.com/photos/yEuEHQdLLEc"
# product13.save!

# product14 = Product.new(user: user3 , title: "Canapé", description:"J'habite au 5ème sans ascenceur, il faudra le monter au 1er étage à l'arrivée", status: 0,  aa: "72 Rue Falguière, 75015 Paris", ad: "11 Rue Crespin du Gast, 75011 Paris", date: "25-03-2018", date_delivery:"28-03-2018", width: Width.order("RANDOM()").first)
# product14.remote_photo_url = "https://unsplash.com/photos/yEuEHQdLLEc"
# product14.save!

# product15 = Product.new(user: user3 , title: "Canapé", description:"J'habite au 5ème sans ascenceur, il faudra le monter au 1er étage à l'arrivée", status: 0,  aa: "14 Rue Sophie Germain, 75014 Paris", ad: "4 Rue Crozatier, 75012 Paris", date: "26-03-2018", date_delivery:"31-03-2018", width: Width.order("RANDOM()").first)
# product15.remote_photo_url = "https://unsplash.com/photos/yEuEHQdLLEc"
# product15.save!


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
# offer1 = Offer.create(product_id: product1, transporter:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer2 = Offer.create(product_id: product1, transporter:transporter1, price: 33, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer3 = Offer.create(product_id: product1, transporter:transporter1, price: 43, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer4 = Offer.create(product_id: product2, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer5 = Offer.create(product_id: product2, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer6 = Offer.create(product_id: product2, transporter_id:transporter1, price: 23, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer7 = Offer.create(product_id: product3, transporter_id:transporter1, price: 20, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer8 = Offer.create(product_id: product3, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer9 = Offer.create(product_id: product3, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer10 = Offer.create(product_id: product4, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer11 = Offer.create(product_id: product4, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)
# offer12 = Offer.create(product_id: product4, transporter_id:transporter1, price: 25, description: "TRES BONNE ETAT", status: 0, hypothese_id: 1)

offer1 = Offer.create!(product: product1, transporter:transporter1, price: 8, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer2 = Offer.create(product: product1, transporter:transporter2, price: 12, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer3 = Offer.create(product: product1, transporter:transporter5, price: 14, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer4 = Offer.create(product: product1, transporter:transporter6, price: 10, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)

offer5 = Offer.create(product: product2, transporter:transporter1, price: 7, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer6 = Offer.create(product: product2, transporter:transporter2, price: 8, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer7 = Offer.create(product: product2, transporter:transporter5, price: 9, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer8 = Offer.create(product: product2, transporter:transporter6, price: 10, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)

offer9 = Offer.create(product: product3, transporter:transporter1, price: 25, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer10 = Offer.create(product: product3, transporter:transporter2, price: 24, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer11 = Offer.create(product: product3, transporter:transporter5, price: 12, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer12 = Offer.create(product: product3, transporter:transporter6, price: 18, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)

offer13 = Offer.create(product: product4, transporter:transporter1, price: 9, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer14 = Offer.create(product: product4, transporter:transporter2, price: 12, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer15 = Offer.create(product: product4, transporter:transporter5, price: 8, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer16 = Offer.create(product: product4, transporter:transporter6, price: 12, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)

offer17 = Offer.create(product: product5, transporter:transporter1, price: 11, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer18 = Offer.create(product: product5, transporter:transporter2, price: 12, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer19 = Offer.create(product: product5, transporter:transporter5, price: 14, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer20 = Offer.create(product: product5, transporter:transporter6, price: 20, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)

offer21 = Offer.create(product: product6, transporter:transporter1, price: 20, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer22 = Offer.create(product: product6, transporter:transporter2, price: 19, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer23 = Offer.create(product: product6, transporter:transporter5, price: 17, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer24 = Offer.create(product: product6, transporter:transporter6, price: 18, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)

offer25 = Offer.create(product: product7, transporter:transporter1, price: 23, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer26 = Offer.create(product: product7, transporter:transporter2, price: 22, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer27 = Offer.create(product: product7, transporter:transporter5, price: 25, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer28 = Offer.create(product: product7, transporter:transporter6, price: 24, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)

offer29 = Offer.create(product: product8, transporter:transporter1, price: 30, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer30 = Offer.create(product: product8, transporter:transporter2, price: 31, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
offer31 = Offer.create(product: product8, transporter:transporter5, price: 26, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.last.id)
offer32 = Offer.create(product: product8, transporter:transporter6, price: 34, description: "Dispo 0612425690", status: 0, hypothese_id: Hypothese.first.id)
