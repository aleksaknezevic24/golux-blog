class MessagesController < ApplicationController
 layout 'blogs'
 def new
   @message = Message.new
 end  

 def message
	@message = Message.new
 end

 def create
 @message = Message.new(message_params)  if @message.valid?
   MessageMailer.contact_me(@message).deliver_now
   redirect_to new_message_path, notice: "Message received"
 else
   render :new
 end
end  

private  def message_params
   params.require(:message).permit(:name, :email, :body)
 end

