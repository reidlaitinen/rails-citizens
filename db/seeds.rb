# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do |i|
  first_name = Faker::GameOfThrones.character.split(' ')[0]
  last_name = Faker::GameOfThrones.character.split(' ')[1]
  age = rand(14..65)
  hair_color = Faker::Color.color_name
  eye_color = Faker::Color.color_name
  gender = ['Male','Female'].sample
  alive = [true, false].sample
  Person.create(first_name: first_name, last_name: last_name, age: age, hair_color: hair_color, eye_color: eye_color, gender: gender, alive: alive)
end