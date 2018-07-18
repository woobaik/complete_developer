# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
haram = User.create(username: 'hamiee', password: 'hamiee')
dave = User.create(username: 'dave', password: 'hamiee')
blue = User.create(username: 'blue', password: 'hamiee')

haram.tasks.create(title: "Drop it like it is hot", description: "Wahatever")
dave.tasks.create(title: "Hooooo", description: "Afreeca TV")
