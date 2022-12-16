# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

authors = User.create([
    {name: 'Gordon Otieno', photo: 'https://avatars.githubusercontent.com/u/20200982?v=4', bio: 'A chese player, passionte swimmer', email: 'gordon@gmail.com', password: 'test123', password_confirmation: 'test123'},
    {name: 'Smith Caleen', photo: 'https://media-exp1.licdn.com/dms/image/D4D35AQGYW8yz5N2Vpw/profile-framedphoto-shrink_400_400/0/1665468982185?e=1671120000&v=beta&t=nUkb0WEzuEwfn00Q7oC_9wlWizXRVvrGEIUBIYIDENI', bio: 'A kenyan born citizen leaving in Nairobi Kenya', email: 'otieno@gmail.com', password: 'test123', password_confirmation: 'test123'},
   
])
  
  posts = Post.create([
    {author_id: 1, title: 'Keep fighting the Ruler', text: 'We are close to destroying the Death Star, all rebels come full out'},
    {author_id: 2, title: 'THe river between', text: 'The first book to be written by Ngun=gi wa ngugi wa Thiongo'},
   
  ])
  
  comments = Comment.create([
    {author_id: 2, post_id: 1, text: 'Don\'t miss that hit'},
    {author_id: 1, post_id: 2, text: 'We will keep on doing so'},
    
  ])
  
  likes = Like.create([
    {author_id: 2, post_id: 1},
    {author_id: 1, post_id: 2},
    
  ])
