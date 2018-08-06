# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{ name: 'American'}, { name: 'Mexican'}, { name: 'Soup'}, { name: 'Asian'}, { name: 'Mediterranean'}, { name: 'Indian'}, { name: 'Breakfast'}, { name: 'Cookies'}, { name: 'Seasoning'}, { name: 'Salad'}, { name: 'Bowl'}, { name: 'NOLA'}, { name: 'Rice'}, { name: 'Chicken'}, { name: 'Pizza'}])

store_sections = StoreSection.create([{ section: 'Produce', aisle: 1000 }, { section: 'Meat', aisle: 4000 }, { section: 'Dairy', aisle: 5000 }, { section: 'Cheese', aisle: 1100 }, { section: 'Beans Rice', aisle: 3500 }, { section: 'Frozen', aisle: 4500 }, { section: 'Natural', aisle: 2000 }, { section: 'Alcohol', aisle: 1200 }, { section: 'International', aisle: 3000 }, { section: 'Chips', aisle: 5100 }, { section: 'Spices', aisle: 5200 }, { section: 'Baking', aisle: 4600 }])
