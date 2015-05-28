# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(username: "Rory", remember_token: "1")
user2 = User.create(username: "Amelia", remember_token: "2")
user3 = User.create(username: "Rose", remember_token: "3")
user4 = User.create(username: "Martha", remember_token: "4")
user5 = User.create(username: "Mickey", remember_token: "5")
