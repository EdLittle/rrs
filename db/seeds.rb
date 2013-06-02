# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
building1 = Building.create(name: "Melchor Hall")
buidling2 = Building.create(name: "Palma Hall")

Room.create(name: "PH 115", building_id: building1.id)
Room.create(name: "PH 116", building_id: building1.id)
Room.create(name: "PH 117", building_id: building1.id)

Room.create(name: "MH 325", building_id: buidling2.id)
Room.create(name: "MH 326", building_id: buidling2.id)
Room.create(name: "MH 327", building_id: buidling2.id)