mount ActionCable.server => "/cable"
class ChatRoomsChannel < ApplicationCable::Channel
    def subscribed
        chat = Chat.find(params[:id])
        stream_for chat
        # stream_from "some_channel"
      end
    
      def unsubscribed
        # Any cleanup needed when channel is unsubscribed
      end
    end
    end