# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

item_names = ['Starbucks Coffee','Chobani Yogurt','Coconut Water','Doritos Nachos', 'Crystal Meth', 'Milk Chug', 'Hummus', 'Avocado', 'Macbook Air','Grimy T-shirt', 'Ramen noodles']

10.times do
  Item.create(name: item_names.sample, price: rand*100)
end
