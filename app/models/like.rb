class Like < ApplicationRecord
  belongs_to :liked, class_name: 'User', foreign_key: 'liked_id'
  belongs_to :liker, class_name: 'User', foreign_key: 'liker_id'
  has_many :matches, dependent: :destroy

  after_create :check_for_match

  private

  # def check_for_match
  #   if Like.where(liked_id: liker_id, liker_id: liked_id).exists?
  #     match = Match.create
  #     Conversation.create(match: match, sender: liker, recipient: liked)
  #     Conversation.create(match: match, sender: liked, recipient: liker)
  #   end
  # end
  def check_for_match
    if Like.where(liked_id: liker_id, liker_id: liked_id).exists?
      match = Match.create(like: self)
      Conversation.create(match: match, sender: liker, recipient: liked)
      Conversation.create(match: match, sender: liked, recipient: liker)
    end
  end
end
