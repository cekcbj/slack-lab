class Api::MessagesController < ApplicationController

  def create
   @message = Message.new params.require(:message).permit(:content)
   @message.chatroom = Chatroom.find params[:id]

   @message.user = @current_user
 end


def index
  @chatroom = Chatroom.find(params[:id])
  @messages = @chatroom.messages.order("created_at desc")
end

end
