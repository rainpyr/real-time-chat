class User < ApplicationRecord
    has_many :messages
    has_many :chats, through: :messages
    validates :username, presence: true, uniqueness: true
  end