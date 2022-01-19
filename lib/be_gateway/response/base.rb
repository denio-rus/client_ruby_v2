module BeGateway
  class Base < OpenStruct
    attr_reader :http_status_code

    def initialize(response)
      @http_status_code = response.status
      @params = response.body

      super(response.body)
    end

    private

    attr_reader :params

  end
end
