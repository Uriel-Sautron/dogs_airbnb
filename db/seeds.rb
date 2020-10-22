# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dog.destroy_all
35.times do 
  dog = Dog.create!(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed)
end

DogSitter.destroy_all
10.times do
  dog_sitter = DogSitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name) 
end

Stroll.destroy_all
50.times do
  stroll = Stroll.create!(place: Faker::Address.street_name, date: Faker::Time.between_dates(from: Date.today, to: Date.today + 50, period: :day), dog_id: Dog.ids.sample, dog_sitter_id: DogSitter.ids.sample)
end

