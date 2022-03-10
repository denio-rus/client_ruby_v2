module BeGatewayV3
  class AsyncResponse
    attr_reader :http_status_code, :body

    def initialize(response)
      @http_status_code = response.status
      @body = response.body
    end

    def successful?
      (200..299).cover?(http_status_code)
    end

    def failed?
      !successful? && !processing?
    end

    def processing?
      body['status'] == 'processing'
    end
  end
end
