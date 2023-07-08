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
  },
  {
    username: "ShadowSlayer",
    age: 24,
    gender: "masculine",
    email: "shadowslayer@mail.com",
    password: "gamer1234"
  },
  {
    username: "EpicGamerGirl",
    age: 21,
    gender: "feminine",
    email: "epicgamergirl@mail.com",
    password: "gamingqueen"
  },
  {
    username: "NinjaWarrior",
    age: 28,
    gender: "masculine",
    email: "ninjawarrior@mail.com",
    password: "stealthmaster"
  },
  {
    username: "PixelWizard",
    age: 19,
    gender: "masculine",
    email: "pixelwizard@mail.com",
    password: "8bitmagic"
  },
  {
    username: "SavageQueen",
    age: 26,
    gender: "feminine",
    email: "savagequeen@mail.com",
    password: "ruthlessgamer"
  },
  {
    username: "CyberSamurai",
    age: 30,
    gender: "masculine",
    email: "cybersamurai@mail.com",
    password: "techblade21"
  },
  {
    username: "RetroGamerBoy",
    age: 23,
    gender: "masculine",
    email: "retrogamerboy@mail.com",
    password: "nostalgic90s"
  },
  {
    username: "MysticMage",
    age: 27,
    gender: "feminine",
    email: "mysticmage@mail.com",
    password: "spellcaster55"
  },
  {
    username: "DragonSlayer",
    age: 25,
    gender: "masculine",
    email: "dragonslayer@mail.com",
    password: "fireandsteel"
  },
  {
    username: "StealthyAssassin",
    age: 29,
    gender: "masculine",
    email: "stealthyassassin@mail.com",
    password: "shadowblade99"
  },
  {
    username: "GamingWarrior",
    age: 20,
    gender: "feminine",
    email: "gamingwarrior@mail.com",
    password: "battlequeen12"
  },
  {
    username: "RapidReload",
    age: 32,
    gender: "masculine",
    email: "rapidreload@mail.com",
    password: "triggerfinger"
  },
  {
    username: "GalacticHero",
    age: 31,
    gender: "masculine",
    email: "galactichero@mail.com",
    password: "starvoyager"
  },
  {
    username: "FierceWarrior",
    age: 22,
    gender: "feminine",
    email: "fiercewarrior@mail.com",
    password: "battlecry88"
  },
  {
    username: "MasterGamer",
    age: 33,
    gender: "masculine",
    email: "mastergamer@mail.com",
    password: "level100boss"
  },
  {
    username: "Evaainsworth",
    age: 31,
    gender: "feminine",
    email: "evaainsworth@gmail.com",
    password: "hardstuckgold"
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
