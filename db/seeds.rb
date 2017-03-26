# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.upto(50).each do |num|
  Product.create! name: 'Product' + num.to_s, description: 'some description',
  image: File.open(File.join(Rails.root, '/app/assets/images/default.jpg')), cost: 99.99, availibility: 10
end

new_user1 = User.create!(admin: true,
                  email: 'admin@vicpu.com',
                  password: 'abc1234')
new_user2 = User.create!(admin: false,
                  email: Faker::Internet.free_email,
                  password: 'abc1234')

new_order = Order.create!(total_cost: 300.00, payment_stage: 1)
new_user1.orders << new_order
new_order.user_id = new_user1.id


#new_order.products << Product.first
#new_order.user << new_user1
#new_user1.orders << new_order
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')