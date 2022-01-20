module BeGateway
  class ErrorResponse < Base
    def status
      'error'
    end

    def invalid?
      true
    end

    def errors
      @errors ||= Errors.new(self.dig('response', 'errors'))
    end

    def message
      @message ||= self.dig('response', 'message')
    end

    def friendly_message
      @friendly_message ||= self['response']['friendly_message']
    end

    def code
      @code ||= self['response']['code']
    end

    private

    class Errors < OpenStruct
      def attributes
        each_pair.collect {|attr, _| attr }
      end

      def on(attribute)
        self[attribute]
      end

      def for(attribute)
        Errors.new(self[attribute])
      end
    end
  end
end
