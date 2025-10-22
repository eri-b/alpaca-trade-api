module Alpaca
  module Trade
    module Api
      class Trade
        attr_reader :status, :trade, :last

        def initialize(json)
          format = "%Y-%m-%dT%H:%M:%SZ"
          @time = DateTime.strptime(json['t'], format)
          @size = json['s']
          @conditions = json['c']
          @exchange = json['x']
          @tape = json['z']
        end
      end
    end
  end
end
