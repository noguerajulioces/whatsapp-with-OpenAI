class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def create
    @user = User.find_by(phone_number: params[:from])
    if @user
      @message = @user.messages.create(content: params[:body], message_type: 'incoming')

      conversation = @user.conversation || @user.create_conversation(context: [])
      context      = JSON.parse(conversation.context)

      response = OpenAIService.new(@message.content, context).call

      if response
        conversation.update(context: context.push({ role: "user", content: @message.content }).push({ role: "assistant", content: response }).to_json)
        reminder = ReminderService.new(@user, response).create_reminder
        send_message("Reminder created: #{reminder.title}", @user)
      else
        send_message("Sorry, I didn't understand that.", @user)
      end
    else
      render plain: "User not found", status: :not_found
    end
  end

  private

    def send_message(content, user)
      # Lógica para enviar un mensaje de respuesta vía WhatsApp
    end
end