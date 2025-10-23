module Alpaca
  module Trade
    module Api
      class Trade
        attr_reader :time, :size, :conditions, :exchange, :tape

        def initialize(json)
          @time = DateTime.iso8601(json['t'])
          @size = json['s']
          @conditions = json['c']
          @exchange = json['x']
          @tape = json['z']
        end
      end
    end
  end
end
