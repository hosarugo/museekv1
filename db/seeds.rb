# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# rake db:drop db:create db:migrate db:seed


# Advertisement.destroy_all
User.destroy_all
# Message.destroy_all
# Conversation.destroy_all

puts "DESTROY DATABASE!!!"


puts 'Creating fake users'

# 15.times do
#   User.create(
#     email: Faker::Internet.email,
#     password: "password",
#     full_name: Faker::Twitter.screen_name,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     instrument1: "Guitar",
#     instrument2: "Guitar",
#     instrument3: "Guitar",
#     instrument4: "Guitar",
#     instrument5: "Guitar",
#     style1: "Rock",
#     style2: "Rock",
#     style3: "Rock",
#     address: Faker::Address.full_address


#     )
# end

user =  User.create({
    email: "hugo@gmail.com",
    password: "password",
    full_name: "Hugo Rosa",
    first_name: "Hugo",
    last_name: "Rosa",
    about: "Grand Barrosa
​
or when folk music meets the soul
Born by the sea , this Lusitanian grew up with a rich musical culture. Grand started playing music at the age of 7 years . Since the music is all that the world means for him . A mixture of feelings , love and 'saudade' .



After trying many musical styles, Grand perfected his singing and discovers that more than instruments , his voice can carry and felt in others what he feels. Grand crossed South America with his guitar, before crossing Canada on foot and always with his guitar on the back. His music is halfway between melancholy and sensual folk .



Be swept away by the world of Grand Barrosa",
    instrument1: "Guitar",
    instrument2: "Guitar",
    instrument3: "Guitar",
    instrument4: "Guitar",
    instrument5: "Guitar",
    style1: "Rock",
    style2: "Rock",
    style3: "Rock",
    address: "Rue de la justice 4, 1096 Cully"

    })
# user.avatar_url = "https://scontent.flis5-1.fna.fbcdn.net/v/t31.0-8/20626573_10155773499743109_2156786739631634358_o.jpg?oh=4b1096754adf1a110a54e2a30feaa41d&oe=5A9C5189"
user.save

user =  User.create({
    email: "gonçalo@gmail.com",
    password: "password",
    full_name: "Gonçalo Costa",
    first_name: "Gonçalo",
    last_name: "Costa",
    about: "I am a musician and i love to play with people!",
    instrument1: "Guitar",
    instrument2: "Guitar",
    instrument3: "Guitar",
    instrument4: "Guitar",
    instrument5: "Guitar",
    style1: "Rock",
    style2: "Rock",
    style3: "Rock",
    address: "Route de Lausanne 2, 1096 Cully"

    })
# user.avatar_url = "https://scontent.flis5-1.fna.fbcdn.net/v/t31.0-8/20626573_10155773499743109_2156786739631634358_o.jpg?oh=4b1096754adf1a110a54e2a30feaa41d&oe=5A9C5189"
user.save

user =  User.create({
    email: "pedro@gmail.com",
    password: "password",
    full_name: "Pedro Chuva",
    first_name: "Gonçalo",
    last_name: "Costa",
    about: "I am a musician and i love to play with people!",
    instrument1: "Guitar",
    instrument2: "Guitar",
    instrument3: "Guitar",
    instrument4: "Guitar",
    instrument5: "Guitar",
    style1: "Rock",
    style2: "Rock",
    style3: "Rock",
    address: "Route de Lausanne 2, 1096 Cully"

    })

user =  User.create({
    email: "diogo@gmail.com",
    password: "password",
    full_name: "Diogo Lopes",
    first_name: "Gonçalo",
    last_name: "Costa",
    about: "I am a musician and i love to play with people!",
    instrument1: "Guitar",
    instrument2: "Guitar",
    instrument3: "Guitar",
    instrument4: "Guitar",
    instrument5: "Guitar",
    style1: "Rock",
    style2: "Rock",
    style3: "Rock",
    address: "Route de Lausanne 2, 1096 Cully"

    })
# user.avatar_url = "https://scontent.flis5-1.fna.fbcdn.net/v/t31.0-8/20626573_10155773499743109_2156786739631634358_o.jpg?oh=4b1096754adf1a110a54e2a30feaa41d&oe=5A9C5189"
user.save
# user.avatar_url = "https://scontent.flis5-1.fna.fbcdn.net/v/t31.0-8/20626573_10155773499743109_2156786739631634358_o.jpg?oh=4b1096754adf1a110a54e2a30feaa41d&oe=5A9C5189"
user.save


message = Message.create({
  content: "labalbalbalablablabalbalablab",
  user_id: 1,
  })

message.save
