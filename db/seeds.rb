# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Dish.destroy_all
User.destroy_all


puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)
# you = User.create(name: "Feel Free To Change This To Your Name")


puts "Creating dishess..."
dish1 = Product.create(name: "Pancakes", intended_to_be: "Sweet", current_price: 10.00)
dish2 = Product.create(name: "Vegan Pasta", intended_to_be: "Spicy", current_price: 8.88)




puts "Creating ratings..."
# *****************************************************************
# * TODO: create ratings! Remember, a review belongs to a dishes *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here




puts "🌱 Seeding done! 🌱"