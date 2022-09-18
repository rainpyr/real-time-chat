class Message < ApplicationRecord
    belongs_to :chat, optional: true
    belongs_to :user, optional: true
  end