# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([{name: "Austin Adams"}, {name: "Zach Arnold"}]);
posts = Post.create([
                        {
                            user: users[0], content:
                            "we build scala code all day long."
                        },
                        {
                            user: users[1], content:
                            "we do devops all day long."
                        }
                    ]);
comments = Comment.create([{
                              post: posts[0],
                              content: "Sweet"
                           },
                           {
                               post: posts[0],
                               content: "Rad"
                           },
                           {
                               post: posts[0],
                               content: "Radical"
                           }
                          ])