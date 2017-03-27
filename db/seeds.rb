# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cpuCategory = Category.create! name:'CPU', image: File.open(File.join(Rails.root, '/app/assets/images/cpu.jpg'))
moboCategory = Category.create! name:'Motherboards', image: File.open(File.join(Rails.root, '/app/assets/images/motherboards.jpg'))
ramCategory = Category.create! name:'RAM', image: File.open(File.join(Rails.root, '/app/assets/images/ram.jpg'))
psuCategory = Category.create! name:'Power Supplies', image: File.open(File.join(Rails.root, '/app/assets/images/psu.jpg'))
ssdCategory = Category.create! name:'SSD', image: File.open(File.join(Rails.root, '/app/assets/images/ssd.jpeg'))
caseCategory = Category.create! name:'Cases', image: File.open(File.join(Rails.root, '/app/assets/images/case.jpg'))


1.upto(5).each do |num|
  newProduct = Product.create! name: 'Product' + num.to_s, description: 'some description',
  image: File.open(File.join(Rails.root, '/app/assets/images/cpu.jpg')), cost: 99.99, availibility: 10
  newProduct.categories << cpuCategory
  cpuCategory.products << newProduct
end

1.upto(5).each do |num|
  newProduct = Product.create! name: 'Product' + num.to_s, description: 'some description',
  image: File.open(File.join(Rails.root, '/app/assets/images/motherboards.jpg')), cost: 99.99, availibility: 10
  newProduct.categories << moboCategory
  moboCategory.products << newProduct
end

1.upto(5).each do |num|
  newProduct = Product.create! name: 'Product' + num.to_s, description: 'some description',
  image: File.open(File.join(Rails.root, '/app/assets/images/ram.jpg')), cost: 99.99, availibility: 10
  newProduct.categories << ramCategory
  ramCategory.products << newProduct
end

1.upto(5).each do |num|
  newProduct = Product.create! name: 'Product' + num.to_s, description: 'some description',
  image: File.open(File.join(Rails.root, '/app/assets/images/psu.jpg')), cost: 99.99, availibility: 10
  newProduct.categories << psuCategory
  psuCategory.products << newProduct
end

1.upto(5).each do |num|
  newProduct = Product.create! name: 'Product' + num.to_s, description: 'some description',
  image: File.open(File.join(Rails.root, '/app/assets/images/ssd.jpeg')), cost: 99.99, availibility: 10
  newProduct.categories << ssdCategory
  ssdCategory.products << newProduct
end


1.upto(5).each do |num|
  newProduct = Product.create! name: 'Product' + num.to_s, description: 'some description',
  image: File.open(File.join(Rails.root, '/app/assets/images/case.jpg')), cost: 99.99, availibility: 10
  newProduct.categories << caseCategory
  caseCategory.products << newProduct
end


new_user1 = User.create!(admin: true,
                  email: 'admin@vicpu.com',
                  password: 'abc1234')
new_user2 = User.create!(admin: false,
                  email: Faker::Internet.free_email,
                  password: 'abc1234')

new_order = Order.create!(total_cost: 300.00, payment_stage: 1)
new_user1.orders << new_order
#new_order.user << new_user1
new_order.user_id = new_user1.id


#new_order.products << Product.first
#new_order.user << new_user1
#new_user1.orders << new_order
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
