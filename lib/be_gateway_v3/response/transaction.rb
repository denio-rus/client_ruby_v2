module BeGatewayV3
  class Transaction < OpenStruct
    def successful?
      self[:status] == "successful"
    end

    def failed?
      self[:status] == "failed"
    end

    def incomplete?
      self[:status] == "incomplete"
    end

    [:authorization, :payment, :refund, :capture, :void, :credit, :payout, :chargeback, 
     :fraud_advice, :three_d_secure_verification, :max_mind_verification,
     :card_bin_verification].each do |section|

      define_method(section) do
        return unless self[section]

        sections_values[section] ||= Section.new(self[section])
      end
    end

    private

    attr_reader :params

    def sections_values
      @sections_values ||= {}
    end

    class Section < OpenStruct
    end
  end
end
