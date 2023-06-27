#app>models>conversation.rb
class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :match
  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User'
end
