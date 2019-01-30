# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  user = User.create!(name: Faker::StarWars.droid)
end

10.times do
  link = Link.create!(name: Faker::StarWars.planet, url: Faker::Internet.url, user_id: (rand(User.first.id..User.last.id)))
end

10.times do
  comment = Comment.create!(content: Faker::StarWars.quote, user_id: (rand(User.first.id..User.last.id)), link_id: (rand(Link.first.id..Link.last.id)))
end

10.times do
  subcomment = SubComment.create!(content: Faker::StarWars.quote, user_id: (rand(User.first.id..User.last.id)), comment_id: (rand(Comment.first.id..Comment.last.id)))
end
