# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

recipe1 = Recipe.create!(title: "Mushroom Pizza")
recipe1.ingredients.create!(name: "Mushrooms", quantity: "1 cup")
recipe1.ingredients.create!(name: "Pizza Dough", quantity: "1 pizza")

recipe2 = Recipe.create!(title: "Spaghetti and Meatballs")
recipe2.ingredients.create!(name: "Meatballs", quantity: "3 meatballs")
recipe2.ingredients.create!(name: "Spaghetti", quantity: "1/2 lb")

recipe3 = Recipe.create!(title: "Ham Sandwich")
recipe3.ingredients.create!(name: "Ham", quantity: "2 slices")
recipe3.ingredients.create!(name: "White Bread", quantity: "2 slices")
