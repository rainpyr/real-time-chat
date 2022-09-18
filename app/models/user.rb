class User < ApplicationRecord
    has_many :messages
    has_many :chats, through: :messages
    validates :username, length: { minimum: 2 }
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    has_secure_password
  end