# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Message.destroy_all
Conversation.destroy_all
Match.destroy_all
Like.destroy_all
UserGame.destroy_all
User.destroy_all
Game.destroy_all

puts "Deleting all"

puts "Creating User list"

users = User.create!([
  {
    username: "Jean",
    birthdate: Date.new(1980, 2, 28),
    gender: "masculine",
    email: "jean@mail.com",
    password: "123456789"
  },
  {
    username: "Anette",
    birthdate: Date.new(2001, 5, 15),
    gender: "feminine",
    email: "anette@mail.com",
    password: "123456789"
  },
  {
    username: "Paul",
    birthdate: Date.new(1990, 5, 17),
    gender: "masculine",
    email: "paul@mail.com",
    password: "123456789"
  },
  {
    username: "Marie",
    birthdate: Date.new(1991, 5, 22),
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
    mood: "try hard",
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
    mood: "try hard",
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

puts "Creating likes list"

likes = Like.create!([
  {
    liked: users[1],
    liker: users[2],
  },
  {
    liked: users[3],
    liker: users[1],
  },
  {
    liked: users[2],
    liker: users[3],
  }
])

puts "Created #{likes.count} likes"

puts "Creating matches list"

matches = Match.create!([
  {
    like: likes[0]
  },
  {
    like: likes[1]
  },
  {
    like: likes[2]
  }
])

puts "Created #{matches.count} matches"


conversations = Conversation.create!([
  {
    sender_id: users[0].id,
    recipient_id: users[1].id,
    match: matches[0]
  },
  {
    sender_id: users[2].id,
    recipient_id: users[3].id,
    match: matches[1]
  }
])

puts "Created #{conversations.count} conversations"

messages = Message.create!([
  {
    conversation_id: conversations[0].id,
    user_id: users[0].id,
    content: "Salut Anette, comment ça va ?"
  },
  {
    conversation_id: conversations[0].id,
    user_id: users[1].id,
    content: "Ça va bien, merci Jean! Prêt pour une partie de Valorant?"
  },
  {
    conversation_id: conversations[1].id,
    user_id: users[2].id,
    content: "Hey Marie, veux-tu jouer à Teamfight Tactics?"
  },
  {
    conversation_id: conversations[1].id,
    user_id: users[3].id,
    content: "Oui, je suis partante, Paul!"
  }
])

puts "Created #{messages.count} messages"
