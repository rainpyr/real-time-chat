class MessagesController < ApplicationController

  def index
    # headers['Access-Control-Allow-Origin'] = '*'
    # render json: Message.all.reverse
    
  end
  def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.user.username
      head :ok
    end
    # if message.persisted?
    #   render json: message
    # else
    #   render json: {error: 'couldn't create secret}, status 422
    # end
  end

  def show

  end

  private

    def message_params
      params.require(:message).permit(:content, :chat_id, :user_id)
    end
end