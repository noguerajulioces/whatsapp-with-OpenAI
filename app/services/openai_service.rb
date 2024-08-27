class OpenAIService
  def initialize(message_content, context = nil)
    @message_content = message_content
    @context         = context || []
    @client          = OpenAI::Client.new
  end

  def call
    response = @client.chat(parameters: chat_parameters)
    extract_response(response)
  end

  private

    def chat_parameters
      {
        model:      "gpt-4",
        messages:   build_messages,
        max_tokens: 150
      }
    end

    def build_messages
      messages = @context.map { | msg | { role: msg[:role], content: msg[:content] } }
      messages << { role: "user", content: @message_content }
      messages
    end

    def extract_response(response)
      response.dig("choices", 0, "message", "content") if response
    end
end