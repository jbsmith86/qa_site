# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Q1 = Question.create( title: 'Why does this happen?', text: "You forgot to add a controller action" )
Q1.users.create(username: 'bobtheavenger', email: 'bob@apples.com', password: '1234', password_confirmation: '1234')
