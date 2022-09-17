class AddTopicToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :topic, :text
  end
end
