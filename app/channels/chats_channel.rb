class ChatRoomsChannel < ApplicationCable::Channel
    def subscribed
        
        @chat = Chat.find_by(id: params[:chat])
        stream_for @chat
      end
    
      # the second argument to broadcast_to matches the information that I am getting from the frontend, and passing from the MessagesController create action
      # def received(data)
      #   RoomsChannel.broadcast_to(@room, {room: @room, users: @room.users, messages: @room.messages})
      # end
    
      def unsubscribed
        # any cleanup needed when channel is unsubscribed
      end
    end