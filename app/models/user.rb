class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :user_games
  has_many :games, through: :user_games
  has_many :received_likes, class_name: 'Like', foreign_key: 'liked_id'
  has_many :given_likes, class_name: 'Like', foreign_key: 'liker_id'
  has_many :received_match, through: :received_likes, source: :matches
  has_many :given_match, through: :given_likes, source: :matches
  has_many :messages
  has_many :conversations
  has_one :search, dependent: :destroy
  def matches
    received_match + given_match
  end
end
