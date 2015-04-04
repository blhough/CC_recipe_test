# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

recipes = Recipe.create([{name: 'pbj', description: 'test'},{name: 'mac and cheese', description: 'test2'}])
Ingredient.create(name: 'cheese', amount: 'lots', unit: 'lbs', recipe: recipes.first)
Ingredient.create(name: 'mac', amount: 'lots', unit: 'lbs', recipe: recipes.first)
Ingredient.create(name: 'milk', amount: '2', unit: 'gallons', recipe: recipes.first)
