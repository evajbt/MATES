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
    gender: "man",
    email: "jean@mail.com",
    password: "123456789"
  },
  {
    username: "Anette",
    age: 30,
    gender: "woman",
    email: "anette@mail.com",
    password: "123456789"
  },
  {
    username: "Paul",
    age: 14,
    gender: "man",
    email: "paul@mail.com",
    password: "123456789"
  },
  {
    username: "Marie",
    age: 19,
    gender: "woman",
    email: "marie@mail.com",
    password: "123456789"
  },
  {
    username: "ShadowSlayer",
    age: 24,
    gender: "man",
    email: "shadowslayer@mail.com",
    password: "123456789"
  },
  {
    username: "EpicGamerGirl",
    age: 21,
    gender: "woman",
    email: "epicgamergirl@mail.com",
    password: "gamingqueen"
  },
  {
    username: "NinjaWarrior",
    age: 28,
    gender: "man",
    email: "ninjawarrior@mail.com",
    password: "123456789"
  },
  {
    username: "PixelWizard",
    age: 19,
    gender: "man",
    email: "pixelwizard@mail.com",
    password: "123456789"
  },
  {
    username: "SavageQueen",
    age: 26,
    gender: "woman",
    email: "savagequeen@mail.com",
    password: "123456789"
  },
  {
    username: "CyberSamurai",
    age: 30,
    gender: "man",
    email: "cybersamurai@mail.com",
    password: "123456789"
  },
  {
    username: "RetroGamerBoy",
    age: 23,
    gender: "man",
    email: "retrogamerboy@mail.com",
    password: "123456789"
  },
  {
    username: "MysticMage",
    age: 27,
    gender: "woman",
    email: "mysticmage@mail.com",
    password: "123456789"
  },
  {
    username: "DragonSlayer",
    age: 25,
    gender: "man",
    email: "dragonslayer@mail.com",
    password: "123456789"
  },
  {
    username: "StealthyAssassin",
    age: 29,
    gender: "man",
    email: "stealthyassassin@mail.com",
    password: "123456789"
  },
  {
    username: "GamingWarrior",
    age: 20,
    gender: "woman",
    email: "gamingwarrior@mail.com",
    password: "123456789"
  },
  {
    username: "RapidReload",
    age: 32,
    gender: "man",
    email: "rapidreload@mail.com",
    password: "123456789"
  },
  {
    username: "GalacticHero",
    age: 31,
    gender: "man",
    email: "galactichero@mail.com",
    password: "123456789"
  },
  {
    username: "FierceWarrior",
    age: 22,
    gender: "woman",
    email: "fiercewarrior@mail.com",
    password: "123456789"
  },
  {
    username: "MasterGamer",
    age: 33,
    gender: "man",
    email: "mastergamer@mail.com",
    password: "123456789"
  },
  {
    username: "Evaainsworth",
    age: 31,
    gender: "woman",
    email: "evaainsworth@gmail.com",
    password: "123456789"
  }
  ])


puts "Created #{users.count} users"

puts "Creating Game list"

games = Game.create!([
  {
    name: "Valorant",
    logo: "val-logo.jpg"
  },
  {
    name: "League of Legends",
    logo: "lol-logo.jpg"
  },
  {
    name: "Teamfight Tactics",
    logo: "tft-logo.jpg"
  },
  {
    name: "Legends of Runeterra",
    logo: "lor-logo.jpg"
  }
])

puts "Created #{games.count} games"

user_games = UserGame.create!([
  {
    user: users[0],
    game: games[1],
    mood: "Chill",
    level: "20"
  },
  {
    user: users[1],
    game: games[2],
    mood: "Try hard",
    level: "32"
  },
  {
    user: users[2],
    game: games[3],
    mood: "Chill",
    level: "63"
  },
  {
    user: users[3],
    game: games[1],
    mood: "Chill",
    level: "47"
  },
  {
    user: users[3],
    game: games[2],
    mood: "Try hard",
    level: "85"
  },
  {
    user: users[3],
    game: games[0],
    mood: "Chill",
    level: "29"
  },
  {
    user: users[4],
    game: games[1],
    mood: "Casual",
    level: "54"
  },
  {
    user: users[4],
    game: games[3],
    mood: "Try hard",
    level: "92"
  },
  {
    user: users[5],
    game: games[0],
    mood: "Chill",
    level: "43"
  },
  {
    user: users[5],
    game: games[2],
    mood: "Competitive",
    level: "76"
  },
  {
    user: users[6],
    game: games[1],
    mood: "Chill",
    level: "35"
  },
  {
    user: users[6],
    game: games[3],
    mood: "Try hard",
    level: "89"
  },
  {
    user: users[7],
    game: games[0],
    mood: "Casual",
    level: "27"
  },
  {
    user: users[8],
    game: games[2],
    mood: "Chill",
    level: "49"
  },
  {
    user: users[9],
    game: games[1],
    mood: "Chill",
    level: "68"
  },
  {
    user: users[10],
    game: games[2],
    mood: "Try hard",
    level: "83"
  },
  {
    user: users[10],
    game: games[3],
    mood: "Casual",
    level: "51"
  },
  {
    user: users[11],
    game: games[0],
    mood: "Competitive",
    level: "91"
  },
  {
    user: users[12],
    game: games[1],
    mood: "Chill",
    level: "33"
  },
  {
    user: users[12],
    game: games[2],
    mood: "Try hard",
    level: "96"
  },
  {
    user: users[13],
    game: games[0],
    mood: "Casual",
    level: "46"
  },
  {
    user: users[13],
    game: games[3],
    mood: "Chill",
    level: "52"
  },
  {
    user: users[14],
    game: games[1],
    mood: "Chill",
    level: "57"
  },
  {
    user: users[14],
    game: games[2],
    mood: "Try hard",
    level: "84"
  },
  {
    user: users[14],
    game: games[0],
    mood: "Casual",
    level: "25"
  },
  {
    user: users[15],
    game: games[1],
    mood: "Competitive",
    level: "98"
  },
  {
    user: users[15],
    game: games[3],
    mood: "Chill",
    level: "44"
  },
  {
    user: users[16],
    game: games[0],
    mood: "Chill",
    level: "60"
  },
  {
    user: users[16],
    game: games[2],
    mood: "Try hard",
    level: "78"
  },
  {
    user: users[17],
    game: games[1],
    mood: "Casual",
    level: "36"
  },
  {
    user: users[17],
    game: games[3],
    mood: "Chill",
    level: "59"
  },
  {
    user: users[18],
    game: games[0],
    mood: "Competitive",
    level: "88"
  },
  {
    user: users[18],
    game: games[1],
    mood: "Chill",
    level: "42"
  },
  {
    user: users[19],
    game: games[2],
    mood: "Try hard",
    level: "95"
  },
  {
    user: users[19],
    game: games[3],
    mood: "Casual",
    level: "53"
  },
  {
    user: users[19],
    game: games[0],
    mood: "Chill",
    level: "39"
  },
  {
    user: users[19],
    game: games[1],
    mood: "Competitive",
    level: "81"
  }
])

puts "Created #{user_games.count} user_games"
