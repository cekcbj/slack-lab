class ChatroomsController < ApplicationController

  def new
  end

  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatrooms = Chatroom.all
    @chatroom= Chatroom.find(params[:id])
  end

end
