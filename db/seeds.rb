# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

karanveer = User.where(name: Faker::Name.name).create
maranveer = User.where(name: Faker::Name.name).create

2.times do 
    post = karanveer.posts.create(                                                                  title: [Faker::Hacker.adjective, Faker::Hacker.noun].join('').titleize
    )
    post.comments.create(body: Faker::Hipster.sentence, user: maranveer)
end
