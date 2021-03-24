# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database.."

User.destroy_all
Task.destroy_all
puts "Creating database.."

joaco_user = User.new(email: "joacocasanova@gmail.com", password: "123456")
nati_user = User.new(email: 'nataliagatti@gmail.com', password:'123456')

joaco_user.save
nati_user.save

tag_1 = Tag.create!(name: '#webdevelopment')
tag_2 = Tag.create!(name: '#database')


task_1 = Task.create!(title: 'Devise Config', content: "installed and tested devise", user: joaco_user)

task_2  = Task.create!(title: 'Database Schema and models', content: "Created database schema and models", user: nati_user)

task_category = TaskCategory.create!(tag: tag_1, task:task_1)
task_category_2 = TaskCategory.create!(tag: tag_2, task:task_2)

