# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Message.destroy_all
Conversation.destroy_all
UserGame.destroy_all
Match.destroy_all
Like.destroy_all

User.destroy_all
Game.destroy_all

puts "Deleting all"

puts "Creating User list"

users = User.create!([
  {
    username: "Jean",
    age: 18,
    gender: "masculine",
    email: "jean@mail.com",
    password: "123456789"
  },
  {
    username: "Anette",
    age: 30,
    gender: "feminine",
    email: "anette@mail.com",
    password: "123456789"
  },
  {
    username: "Paul",
    age: 25,
    gender: "masculine",
    email: "paul@mail.com",
    password: "123456789"
  },
  {
    username: "Marie",
    age: 19,
    gender: "feminine",
    email: "marie@mail.com",
    password: "123456789"
  }
])

puts "Created #{users.count} users"

puts "Creating Game list"

games = Game.create!([
  {
    name: "Valorant"
  },
  {
    name: "League of Legends"
  },
  {
    name: "Teamfight Tactics"
  },
  {
    name: "Legends of Runeterra"
  }
])

puts "Created #{games.count} games"

puts "Creating user_games list"

user_games = UserGame.create!([
  {
    user: users[1],
    game: games[1],
    mood: "Chill",
    level: "5"
  },
  {
    user: users[1],
    game: games[2],
    mood: "Try hard",
    level: "4"
  },
  {
    user: users[2],
    game: games[3],
    mood: "Chill",
    level: "5"
  },
  {
    user: users[3],
    game: games[1],
    mood: "Chill",
    level: "5"
  },
  {
    user: users[3],
    game: games[2],
    mood: "Try hard",
    level: "4"
  },
  {
    user: users[3],
    game: games[0],
    mood: "Chill",
    level: "2"
  }
])

puts "Created #{user_games.count} user_games"
