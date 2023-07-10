
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

user1 = User.create!(
  username: "Jean",
  age: 38,
  gender: "man",
  email: "jean@mail.com",
  password: "123456789"
)

user1.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Jean.jpg')), filename: 'Jean.jpg')

user2 = User.create!(
    username: "Anette",
    age: 41,
    gender: "woman",
    email: "anette@mail.com",
    password: "123456789",
)

user2.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Anette.jpg')), filename: 'Anette.jpg')

user3 = User.create!(
    username: "Paul",
    age: 14,
    gender: "man",
    email: "paul@mail.com",
    password: "123456789",
)

user3.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Paul.jpg')), filename: 'Paul.jpg')

user4 = User.create!(
    username: "Marie",
    age: 19,
    gender: "woman",
    email: "marie@mail.com",
    password: "123456789"
)
user4.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Marie.jpg')), filename: 'Marie.jpg')

user5 = User.create!(
    username: "ShadowSlayer",
    age: 24,
    gender: "man",
    email: "shadowslayer@mail.com",
    password: "123456789"
)

user5.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Shadowslayer.jpg')), filename: 'Shadowslayer.jpg')

user6 = User.create!(
  username: "EpicGamerGirl",
  age: 21,
  gender: "woman",
  email: "epicgamergirl@mail.com",
  password: "gamingqueen"
)

user6.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Epicgamergirl.jpg')), filename: 'Epicgamergirl.jpg')

user7 = User.create!(
  username: "NinjaWarrior",
  age: 28,
  gender: "man",
  email: "ninjawarrior@mail.com",
  password: "123456789"
)

user7.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Ninjawarrior.jpg')), filename: 'Ninjawarrior.jpg')

user8 = User.create!(
  username: "PixelWizard",
  age: 19,
  gender: "man",
  email: "pixelwizard@mail.com",
  password: "123456789"
)

user8.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Pixelwizard.jpg')), filename: 'Pixelwizard.jpg')

user9 = User.create!(
  username: "SavageQueen",
  age: 26,
  gender: "woman",
  email: "savagequeen@mail.com",
  password: "123456789"
)

user9.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Savagequeen.jpg')), filename: 'Savagequeen.jpg')

user10 = User.create!(
  username: "CyberSamurai",
  age: 30,
  gender: "man",
  email: "cybersamurai@mail.com",
  password: "123456789"
)

user10.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Cybersamurai.jpg')), filename: 'Cybersamurai.jpg')

user11 = User.create!(
  username: "RetroGamerBoy",
  age: 23,
  gender: "man",
  email: "retrogamerboy@mail.com",
  password: "123456789"
)

user11.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Retrogamerboy.jpg')), filename: 'Retrogamerboy.jpg')

user12 = User.create!(
  username: "MysticMage",
  age: 27,
  gender: "woman",
  email: "mysticmage@mail.com",
  password: "123456789"
)

user12.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Mysticmage.jpg')), filename: 'Mysticmage.jpg')

user13 = User.create!(
  username: "Natank",
  age: 24,
  gender: "man",
  email: "natank@mail.com",
  password: "123456789"
)

user13.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Natank.jpg')), filename: 'Natank.jpg')

user14 = User.create!(
  username: "StealthyAssassin",
  age: 29,
  gender: "man",
  email: "stealthyassassin@mail.com",
  password: "123456789"
)

user14.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Stealthyassassin.jpg')), filename: 'Stealthyassassin.jpg')

user15 = User.create!(
  username: "GamingWarrior",
  age: 20,
  gender: "woman",
  email: "gamingwarrior@mail.com",
  password: "123456789"
)

user15.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Gamingwarrior.jpg')), filename: 'Gaming.warrior.jpg')

user16 = User.create!(
  username: "RapidReload",
  age: 32,
  gender: "man",
  email: "rapidreload@mail.com",
  password: "123456789"
)

user16.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Rapidreload.jpg')), filename: 'Rapidreload.jpg')

user17 = User.create!(
  username: "GalacticHero",
  age: 31,
  gender: "man",
  email: "galactichero@mail.com",
  password: "123456789"
)

user17.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Galactichero.jpg')), filename: 'Galactichero.jpg')

user18 = User.create!(
  username: "FierceWarrior",
  age: 22,
  gender: "woman",
  email: "fiercewarrior@mail.com",
  password: "123456789"
)

user18.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Fiercewarrior.jpg')), filename: 'Fiercewarrior.jpg')

user19 = User.create!(
  username: "MasterGamer",
  age: 33,
  gender: "man",
  email: "mastergamer@mail.com",
  password: "123456789"
)

user19.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Mastergamer.jpg')), filename: 'Mastergamer.jpg')

user20 = User.create!(
  username: "Evaainsworth",
  age: 31,
  gender: "woman",
  email: "evaainsworth@gmail.com",
  password: "123456789"
)

user20.photo.attach(io: File.open(Rails.root.join('app/assets/images/profil-pic/Evaainsworth.jpg')), filename: 'Evaainsworth.jpg')


puts "Created #{User.count} users"

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
    user: user1,
    game: games[1],
    mood: "Chill",
    level: "20"
  },
  {
    user: user1,
    game: games[2],
    mood: "Try hard",
    level: "32"
  },
  {
    user: user2,
    game: games[3],
    mood: "Chill",
    level: "63"
  },
  {
    user: user3,
    game: games[1],
    mood: "Chill",
    level: "47"
  },
  {
    user: user3,
    game: games[2],
    mood: "Try hard",
    level: "85"
  },
  {
    user: user3,
    game: games[0],
    mood: "Chill",
    level: "29"
  },
  {
    user: user4,
    game: games[1],
    mood: "Casual",
    level: "54"
  },
  {
    user: user4,
    game: games[3],
    mood: "Try hard",
    level: "92"
  },
  {
    user: user5,
    game: games[0],
    mood: "Chill",
    level: "43"
  },
  {
    user: user5,
    game: games[2],
    mood: "Competitive",
    level: "76"
  },
  {
    user: user6,
    game: games[1],
    mood: "Chill",
    level: "35"
  },
  {
    user: user6,
    game: games[3],
    mood: "Try hard",
    level: "89"
  },
  {
    user: user7,
    game: games[0],
    mood: "Casual",
    level: "27"
  },
  {
    user: user8,
    game: games[2],
    mood: "Chill",
    level: "49"
  },
  {
    user: user9,
    game: games[1],
    mood: "Chill",
    level: "68"
  },
  {
    user: user10,
    game: games[2],
    mood: "Try hard",
    level: "83"
  },
  {
    user: user10,
    game: games[3],
    mood: "Casual",
    level: "51"
  },
  {
    user: user11,
    game: games[0],
    mood: "Competitive",
    level: "91"
  },
  {
    user: user12,
    game: games[1],
    mood: "Chill",
    level: "33"
  },
  {
    user: user12,
    game: games[2],
    mood: "Try hard",
    level: "96"
  },
  {
    user: user13,
    game: games[0],
    mood: "Casual",
    level: "46"
  },
  {
    user: user13,
    game: games[3],
    mood: "Chill",
    level: "52"
  },
  {
    user: user14,
    game: games[1],
    mood: "Chill",
    level: "57"
  },
  {
    user: user14,
    game: games[2],
    mood: "Try hard",
    level: "84"
  },
  {
    user: user14,
    game: games[0],
    mood: "Casual",
    level: "25"
  },
  {
    user: user15,
    game: games[1],
    mood: "Competitive",
    level: "98"
  },
  {
    user: user15,
    game: games[3],
    mood: "Chill",
    level: "44"
  },
  {
    user: user16,
    game: games[0],
    mood: "Chill",
    level: "60"
  },
  {
    user: user16,
    game: games[2],
    mood: "Try hard",
    level: "78"
  },
  {
    user: user17,
    game: games[1],
    mood: "Casual",
    level: "36"
  },
  {
    user: user17,
    game: games[3],
    mood: "Chill",
    level: "59"
  },
  {
    user: user18,
    game: games[0],
    mood: "Competitive",
    level: "88"
  },
  {
    user: user18,
    game: games[1],
    mood: "Chill",
    level: "42"
  },
  {
    user: user19,
    game: games[2],
    mood: "Try hard",
    level: "95"
  },
  {
    user: user19,
    game: games[3],
    mood: "Casual",
    level: "53"
  },
  {
    user: user20,
    game: games[0],
    mood: "Chill",
    level: "39"
  },
  {
    user: user20,
    game: games[1],
    mood: "Competitive",
    level: "81"
  }
])

puts "Created #{user_games.count} user_games"
