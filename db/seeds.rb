# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all
Animal.create{animals[0]}

@animals = [
  { name: "The First Task", species: "dog" , :age: 2 , image:"http://loremflickr.com/320/240/dog"}]
