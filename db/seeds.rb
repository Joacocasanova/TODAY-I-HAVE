# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database.."

TaskCategory.destroy_all
User.destroy_all
Task.destroy_all
puts "Creating database.."

joaco_user = User.new(name: "Joaquin", last_name: "Casanova", email: "joacocasanova@gmail.com", password: "123456")
nati_user = User.new(name: "Natalia", last_name: "Gatti",email: 'nataliagatti@gmail.com', password:'123456')
ro_user = User.new(name: "Rocio", last_name: "Picaza", password: "123456", email: "ropicaza@gmail.com")
tom_user = User.new(name: "Tomas", last_name: "Agnese", password: "123456", email: "tomagnese@gmail.com")
camilo_user = User.new(name: "Camilo", last_name: "Gonzalez", password: "123456", email: "camilogonzalez@gmail.com")
nico_user = User.new(name: "Nicolas", last_name: "Kennedy", password: "123456", email: "nicokennedy@gmail.com")


nico_user.avatar.attach(io: URI.open('https://res.cloudinary.com/divzp8hs4/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1615638081/Turna/Nico_avatar_mx98nj.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
joaco_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343080/Turna/joacoavatar_kkzo21.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
ro_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343079/Turna/Ro_bkfwby.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
nati_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1616725619/TODAY%20I%20HAVE/natigatti_ts7nmb.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
tom_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343079/Turna/tom_ps9ctl.jpg'), filename: 'default_avatar.png', content_type: 'image/png')
camilo_user.avatar.attach(io: URI.open('https://res.cloudinary.com/dmtio0viw/image/upload/v1613343080/Turna/camilo_betzts.jpg'), filename: 'default_avatar.png', content_type: 'image/png')

joaco_user.save
nati_user.save
ro_user.save
tom_user.save
camilo_user.save
nico_user.save


tag_1 = Tag.create!(name: 'webdevelopment')
tag_2 = Tag.create!(name: 'database')
tag_3 = Tag.create!(name: 'Ruby')
tag_4 = Tag.create!(name: 'Javascript')
tag_5 = Tag.create!(name: 'Turna')
tag_6 = Tag.create!(name: 'Le Wagon')
tag_7 = Tag.create!(name: 'PostgreSQL')
tag_8 = Tag.create!(name: 'ReadyMeals')
tag_9 = Tag.create!(name: 'CreativeHub')
tag_10 = Tag.create!(name: 'Front-end')
tag_11 = Tag.create!(name: 'Back-end')

task_1 = Task.create!(title: 'Devise Config', content: "installed and tested devise", user: joaco_user)
task_2  = Task.create!(title: 'Database Schema and models', content: "Created database schema and models", user: nati_user)
task_3 = Task.create!(title: 'Introduction to Javascript', content: "I've started to prepare the introduction course to JS. We are currently looking for teachers.", user: nico_user)
task_4 = Task.create!(title: 'Users now have Avatar!', content: "I've added an avatar class to the users, now reviews and other features will look nice!", user: camilo_user)
task_5 = Task.create!(title: 'Reviews feature!', content: "I've added Reviews model to the project so that users now can rate different services!", user: tom_user)

task_category = TaskCategory.create!(tag: tag_1, task:task_1)
task_category_1 = TaskCategory.create!(tag:tag_5, task: task_1)
task_category_2 = TaskCategory.create!(tag: tag_2, task: task_2)
task_category_3 = TaskCategory.create!(tag: tag_6, task: task_3)
task_category_4 = TaskCategory.create!(tag: tag_9, task: task_4)
task_category_5 = TaskCategory.create!(tag:tag_5, task: task_5)
