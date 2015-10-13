class Api::MessagesController < ApplicationController

  before_action :logged_in_user

  def create
   @message = Message.new params.require(:message).permit(:content)
   @message.chatroom = Chatroom.find (params[:id])

   @message.user = @current_user
   if @message.save
     render status: 201, json: @message
   else
     render status: 422, json: @message.errors
   end
  end


end
