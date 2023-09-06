# frozen_string_literal: true

module BrasilApi
  class DDD < Base
    class << self
      BASE_URL = "ddd/v1"

      # fetch a state and list the cities
      #
      # @param ddd [Integer]
      # @return [Hash]
      def find(ddd)
        request "#{BASE_URL}/#{ddd}"
      end
    end
  end
end
