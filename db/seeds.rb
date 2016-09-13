# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'roo'

User.create!(email: "romain@romain.fr", password: "romain", name: "Palade", firstname: "Romain")

xlsx = Roo::Spreadsheet.open('./base.xlsx')
xlsx = Roo::Excelx.new("./base.xlsx")

1.upto(58501) do |i|
  Client.create(
    :name => xlsx.cell(i,1),
    :firstname => xlsx.cell(i,2),
    :address => xlsx.cell(i,3),
    :zipcode => xlsx.cell(i,4),
    :city => xlsx.cell(i,5),
    :latitude => xlsx.cell(i,6),
    :longitude => xlsx.cell(i,7),
    :email => xlsx.cell(i,8)
  )
end
