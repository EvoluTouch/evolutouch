# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "romain@romain.fr", password: "romain", name: "Palade", firstname: "Romain")

Client.create!(firstname: "prenom 1", name: "nom 1", address: "adresse 1", zipcode: "01000", city: "ville 1")
Client.create!(firstname: "prenom 2", name: "nom 2", address: "adresse 1", zipcode: "01000", city: "ville 1")
Client.create!(firstname: "prenom 3", name: "nom 3", address: "adresse 1", zipcode: "01000", city: "ville 1")
Client.create!(firstname: "prenom 4", name: "nom 4", address: "adresse 1", zipcode: "01000", city: "ville 1")
Client.create!(firstname: "prenom 5", name: "nom 5", address: "adresse 1", zipcode: "01000", city: "ville 1")
Client.create!(firstname: "prenom 6", name: "nom 6", address: "adresse 1", zipcode: "01000", city: "ville 1")

