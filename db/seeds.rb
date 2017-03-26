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
