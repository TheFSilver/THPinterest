# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  new_user = User.create(name: Faker::DragonBall.character)
    5.times do
      Pin.create(link: Faker::Internet.url , user_id: rand(User.first.id..User.last.id))
      4.times do
        Comment.create(description:Faker::ChuckNorris.fact, user_id: rand(User.first.id..User.last.id), pin_id: rand(Pin.first.id..Pin.last.id))
      end

    end

  end
