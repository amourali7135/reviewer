class ChatroomsController < ApplicationController
    
    def create 
        @chatroom = Chatroom.new#(chatroom_params)
        if @chatroom.save
            flash[:notice] = "This chatroom was successfully created!"
            redirect_to @chatroom
        else
            redirect_to :back
        end
        # raise
    end
    
    def show
        @chatroom = Chatroom.find(params[:id])
        @message = Message.new
        @chatrooms = Chatroom.all # NOTE(Eschults): for side navigation
        # raise
    end
    
    private
    
    # def chatroom_params
    #     params.require(:chatroom).permit()
    # end
    
end
