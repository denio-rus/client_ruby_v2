module BeGatewayV3
  class Base < OpenStruct
    attr_reader :http_status_code, :code, :message, :friendly_message

    def initialize(response)
      @http_status_code = response.status
      @params = response.body

      super(response.body)
    end

    def successful?
      (200..299).cover?(http_status_code)
    end

    def code
      @code ||= params['code']
    end

    def message
      @message ||= params['message']
    end

    def friendly_message
      @friendly_message ||= params['friendly_message']
    end

    private

    attr_reader :params

  end
end
