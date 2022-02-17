module BeGatewayV3
  class Response < Base
    def status
      params["status"]
    end

    def invalid?
      false
    end

    def transaction_type
      params["type"]
    end

    def successful?
      status == "successful"
    end

    def failed?
      status == "failed"
    end

    def incomplete?
      status == "incomplete"
    end

    [ :transaction, :three_d_secure_verification, :max_mind_verification, :smart_routing_verification,
      :transaction_verification, :avs_cvc_verification, :verify_p2p, :be_protected_verification,
      :payment_method, :customer, :recipient, :card_bin_verification].each do |section|
 
      define_method(section) do
        return unless self[section]

        sections_values[section] ||= Section.new(self[section])
      end
    end

    private
  
    def sections_values
      @sections_values ||= {}
    end

    class Section < OpenStruct
    end
  end
end
