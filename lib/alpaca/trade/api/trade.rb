module Alpaca
  module Trade
    module Api
      class Trade
        attr_reader :status, :trade, :last

        def initialize(json)
          @status = json['status']
          @symbol = json['symbol']
          @trade = json['trade']
        end
      end
    end
  end
end
