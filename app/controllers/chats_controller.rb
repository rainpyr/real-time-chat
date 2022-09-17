class ChatsController < ApplicationController

  def index
    @chat = Chat.new
    @chats = Chat.all
  end

  def new
    if request.referrer.split("/").last == "chatrooms"
      flash[:notice] = nil
    end
    @chat = Chat.new
  end

  def edit
    @chat = Chat.find_by(slug: params[:slug])
  end

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      respond_to do |format|
        format.html { redirect_to @chat }
        format.js
      end
    else
      respond_to do |format|
        flash[:notice] = {error: ["a chatroom with this topic already exists"]}
        format.html { redirect_to new_chat_path }
        format.js { render template: 'chat/chat_error.js.erb'} 
      end
    end
  end

  def update
    chat = Chat.find_by(slug: params[:slug])
    chat.update(chat_params)
    redirect_to chat
  end

  def show
    @chat = Chat.find_by(slug: params[:slug])
    @message = Message.new
  end

  private

    def chat_params
      params.require(:chat).permit(:topic)
    end
end