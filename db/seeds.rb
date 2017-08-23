# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = Faker::Number.between(1, 200)
users.times do
  User.create({name: Faker::Name.name});
end
100.times do

  post = Post.create(
      {
          user: User.order("RANDOM()").first!,
          content: Faker::Lorem.paragraph
      }
  );
  Faker::Number.between(1, 20).times do
    Comment.create({
                       post: post,
                       user: User.order("RANDOM()").first!,
                       content: Faker::Lorem.sentence
                   })
  end
end