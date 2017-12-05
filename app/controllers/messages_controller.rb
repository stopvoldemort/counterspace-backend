class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message
    else
      render json: false
    end
  end

  def read
    params[:_json].each do |id|
      message = Message.find(id)
      message.read = true
      message.save
    end

    render json: true
  end

  private

  def message_params
    params.require(:message).permit(:sender_id, :recipient_id, :reservation_id, :read, :content)
  end

end
