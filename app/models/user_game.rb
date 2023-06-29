#app>models>user_game.rb
class UserGame < ApplicationRecord
  belongs_to :user
  belongs_to :game
end
