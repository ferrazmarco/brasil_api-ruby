# frozen_string_literal: true

module BrasilApi
  # https://brasilapi.com.br/docs#tag/BANKS
  class Bank < Base
    class << self
      BASE_URL = "banks/v1"

      # List all banks in Brazil
      #
      # @return [Array<Hash>]
      def all
        request BASE_URL
      end

      # Fetch a bank info given his code
      #
      # @param code [Integer]
      # @return [Hash]
      def find(code)
        request "#{BASE_URL}/#{code}"
      end
    end
  end
end
