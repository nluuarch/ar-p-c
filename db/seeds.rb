# This will delete any existing rows from the Dish and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Dish.destroy_all
User.destroy_all
Rating.destroy_all


puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)
# you = User.create(name: "Feel Free To Change This To Your Name")


puts "Creating dishes..."
dish1 = Dish.create(name: "Pancakes", intended_to_be: "Sweet", current_price: 10.00)
dish2 = Dish.create(name: "Vegan Pasta", intended_to_be: "Spicy", current_price: 8.88)




puts "Creating ratings..."
# *****************************************************************
# * TODO: create ratings! Remember, a rating belongs to a dishes  *
# * and a rating belongs to an user.                              *
# *****************************************************************
# Create Ratings Here
Rating.create(score: 1, reason: "Terrible", recommended_price: 1.50, dish_id: Dish.all.sample.id, user_id: User.all.sample.id)
Rating.create(score: 2, reason: "Eh", recommended_price: 5.50, dish_id: Dish.all.sample.id, user_id: User.all.sample.id)
Rating.create(score: 3, reason: "Just ok", recommended_price: 8.50, dish_id: Dish.all.sample.id, user_id: User.all.sample.id)
Rating.create(score: 4, reason: "Pretty good", recommended_price: 10.25, dish_id: Dish.all.sample.id, user_id: User.all.sample.id)
Rating.create(score: 5, reason: "Amazing", recommended_price: 20.50, dish_id: Dish.all.sample.id, user_id: User.all.sample.id)

puts "Ratings created!"




puts "🌱 Seeding done! 🌱

    ✨👏🏾👏🏾👏🏾✨
    If You're Reading This: Your're Doing Great! 
    ✨🙌🏾🙏🏾🙌🏾✨


"