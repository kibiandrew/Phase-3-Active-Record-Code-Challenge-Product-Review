puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."


# Create Reviews Here
review1 = Review.create(start_rating: 5, comment: "Great product!", product_id: product1.id, user_id: user1.id)
review2 = Review.create(start_rating: 4, comment: "Good product!", product_id: product3.id, user_id: user2.id)
review3 = Review.create(start_rating: 5, comment: "Amazing product!", product_id: product2.id, user_id: user3.id)
review4 = Review.create(start_rating: 4, comment: "Nice product!", product_id: product5.id, user_id: user1.id)

puts "Seeding done!"