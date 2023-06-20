class Like < ApplicationRecord
  belongs_to :liked, class_name: 'User', foreign_key: 'liked_id'
  belongs_to :liker, class_name: 'User', foreign_key: 'liker_id'
  has_many :matches
end
