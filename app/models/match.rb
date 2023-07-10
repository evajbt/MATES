class Match < ApplicationRecord
  belongs_to :like
  has_many :conversations, dependent: :destroy
end
