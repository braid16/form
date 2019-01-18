class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to @message
  end

  private
    def message_params
      params.require(:message).permit(:name, :org, :contract, :text)
    end
end
