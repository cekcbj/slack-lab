require "test_helper"

class ChatroomTest < ActiveSupport::TestCase
  def chatroom
    @chatroom ||= Chatroom.new
  end

  def test_valid
    assert chatroom.valid?
  end
end
