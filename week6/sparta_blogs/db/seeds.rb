# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: "Post 1", body: "This is my first post", author: "Jane Eyre")

Post.create(title: "Post 2", body: "This is my second post", author: "Jeff")

Post.create(title: "Post 3", body: "This is my third post", author: "Margret Thatcher")

Comment.create(body: "Rubbish", post_id: 1, author: "Jeff Sterling")

Comment.create(body: "More Rubbish", post_id: 2, author: "Barry Douglas")

Comment.create(body: "Cant believe how bad this is", post_id: 3, author: "Baz")
