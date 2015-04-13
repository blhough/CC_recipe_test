# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  {
    name: "Joe",
    bio: "I'm a cool guy"
  },
  {
    name: "Sarah",
    bio: "I'm awesome"
  },
  {
    name: "Charlie",
    bio: "King of the rats"
  }
])



recipes = Recipe.create([
  {
    name: 'pbj',
    description: 'test',
    user_id: 1
  },
  {
    name: 'mac and cheese',
    description: 'test2',
    user_id: 2
  },
  {
    name: 'milk steak',
    description: 'comes with a side of jellybeans',
    user_id: 3
  },
  {
    name: 'spaghetti',
    description: 'great for during a movie',
    user_id: 3
  },
  {
    name: 'funny tacos',
    description: 'yummy',
    user_id: 1
  },
  {
    name: 'cake',
    description: 'its your birthday',
    user_id: 1
  }
])

ingredients = Ingredient.create([
  {
    name: 'peanut butter',
    amount: 'some',
    unit: "",
    recipe_id: 1
  },
  {
    name: 'jelly',
    amount: 'some more',
    unit: "",
    recipe_id: 1
  },
  {
    name: 'cheese',
    amount: '1',
    unit: "lb",
    recipe_id: 2
  },
  {
    name: 'milk steak',
    amount: '1',
    unit: "cow",
    recipe_id: 3
  },
  {
    name: 'tacos',
    amount: '3',
    unit: "tacos",
    recipe_id: 5
  },
  {
    name: 'idk',
    amount: '3',
    unit: "globs",
    recipe_id: 5
  }
])



