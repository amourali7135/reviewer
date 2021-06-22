# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroy everything"

User.destroy_all
Business.destroy_all
Service.destroy_all


puts 'Creating 2 fake users...'
user = User.new(
  email: 'amir@mourali.com',
  # username: Faker::Alphanumeric.alpha(number: 10),
  password: 'password'
)
user.save!
user = User.new(
  email: 'amir@fake.com',
  # username: Faker::Alphanumeric.alpha(number: 10),
  password: 'password'
)
user.save!

puts 'Creating 2 fake business...'
business = Business.new(
  name: 'fake',
  phone: '3104037911',
  address: 'santa monica',
  price_range: 1,
  about: Faker::Lorem.sentences(number: 1),
  founded: Faker::Date.between(from: 300.days.ago, to: Date.today),
  payments: 'cash only',
  restaurant: Faker::Boolean.boolean,
  user_id: nil
)
business.save!

business = Business.new(
  name: 'fuckingbro',
  phone: '3104037911',
  address: 'santa monica',
  price_range: 1,
  about: Faker::Lorem.sentences(number: 1),
  founded: Faker::Date.between(from: 300.days.ago, to: Date.today),
  payments: 'cash only',
  restaurant: Faker::Boolean.boolean,
  user_id: User.where(email: 'amir@mourali.com')
)
business.save!

puts "Creating 4 fake services..."

service = Service.new(
  name: "service 1", 
  description: Faker::Lorem.sentences(number: 1),
  price_cents: Faker::Commerce.price,
  # remote_photo_url: Faker::Avatar.image,
  business_id: Business.pluck(:id).sample
)
service.save!

service = Service.new(
  name: "service 1", 
  description: Faker::Lorem.sentences(number: 1),
  price_cents: Faker::Commerce.price,
  # remote_photo_url: Faker::Avatar.image,
  business_id: Business.pluck(:id).sample
)
service.save!

service = Service.new(
  name: "service 1", 
  description: Faker::Lorem.sentences(number: 1),
  price_cents: Faker::Commerce.price,
  # remote_photo_url: Faker::Avatar.image,
  business_id: Business.pluck(:id).sample
)
service.save!

service = Service.new(
  name: "service 1", 
  description: Faker::Lorem.sentences(number: 1),
  price_cents: Faker::Commerce.price,
  # remote_photo_url: Faker::Avatar.image,
  business_id: Business.pluck(:id).sample
)
service.save!

puts "Done for now...!"
