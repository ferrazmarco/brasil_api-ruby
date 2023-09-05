# frozen_string_literal: true

module BrasilApi
  # https://brasilapi.com.br/docs#tag/BANKS
  class Bank < Base
    class << self
      BASE_URL = "banks/v1"

      # @return [Array<Hash>]
      def list
        request :get, BASE_URL
      end

      # @param code [Integer]
      # @return [Hash]
      def find(code)
        request :get, "#{BASE_URL}/#{code}"
      end
    end
  end
end
