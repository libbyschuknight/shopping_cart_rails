# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

User.destroy_all
Product.destroy_all
Order.destroy_all

5.times { User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password, address: Faker::Address.street_address) }

10.times { Product.create(name: Faker::Commerce.product_name, description: Faker::Lorem.paragraph, price: rand(1..1000)) }


User.create(name: "Misty Moo", email: "misty@moo.com", password: "1234", address: "555 Moo Land St")
