# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

dogs = []
dogsitters = []
cities = []
strolls = []

30.times do |x|
    dog = Dog.create(name: Faker::Name.first_name)
    dogs << dog
end

30.times do |x|
    dogsitter = Dogsitter.create(name: Faker::Name.name)
    dogsitters << dogsitter
end

30.times do |x|
    city = City.create(city_name: Faker::Address.city, dog_id: dogs[rand(0..29)].id, dogsitter_id: dogsitters[rand(0..29)].id)
    cities << city
end

30.times do |x|
    stroll = Stroll.create(date: Faker::Date.between(from: '2021-09-23', to: '2022-09-25'), dog_id: dogs[rand(0..29)].id, dogsitter_id: dogsitters[rand(0..29)].id)
    strolls << stroll
end