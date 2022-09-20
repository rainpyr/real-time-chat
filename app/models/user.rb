class User < ApplicationRecord
    has_many :messages
    has_many :chats, through: :messages
    validates :username, length: { minimum: 2 }
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    has_secure_password
    # has_many :following_relationships, class_name: 'Follow', foreign_key: 'follower_id'
    # has_many :followed_relationships, class_name: 'Follow', foreign_key: 'followed_id'
    # has_many :following, through: :following_relationships, source: :followed
    # has_many :followers, through: :following_relationships, source: :follower

    # User.first.following
    # User.first.followers
  end