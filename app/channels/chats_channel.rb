class ChatRoomsChannel < ApplicationCable::Channel
    # def subscribed
    # stream_from "chats_#{params['chat_id']}_channel"
    # end
    #    def unsubscribed
    # Stop_all_streams
    # end
    #    def send_message(data)
    # message = current_user.messages.create(body: data['body'], chat_room_id: data['chat_room_id'])
    # if message.errors.present?
    # transmit({type: "chat_rooms", data: message.error.full_messages})
    # else
    # MessageBroadcastJob.perform_later(message.id)
    # end
    #    end
    end