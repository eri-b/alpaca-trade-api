# frozen_string_literal: true

module Alpaca
  module Trade
    module Api
      class Bar
        attr_reader :time, :open, :high, :low, :close, :volume

        def initialize(json)
          @time = DateTime.iso8601(json['t'])
          @open = BigDecimal(json['o'].to_s)
          @high = BigDecimal(json['h'].to_s)
          @low = BigDecimal(json['l'].to_s)
          @close = BigDecimal(json['c'].to_s)
          @volume = json['v']
        end
      end
    end
  end
end
