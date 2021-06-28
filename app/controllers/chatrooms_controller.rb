class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @chatrooms = Chatroom.all # NOTE(Eschults): for side navigation
  end

  private

  def chatroom_params
    params.require(:chatroom).permit()
  end

end
