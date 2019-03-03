# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Destination.create!(location:  'Belize')
Trip.create(destination_id: 1, user_id: 1, location: 'Belize', price: 2000, category: 'environment', title: 'Clean up beaches', description: 'Join fellow volunteers...etc.', reward:'2000 bonus miles')
