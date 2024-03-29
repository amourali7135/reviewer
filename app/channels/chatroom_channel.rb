class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
    stream_for current_user
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
