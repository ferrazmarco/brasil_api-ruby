# frozen_string_literal: true

module BrasilApi
  # https://brasilapi.com.br/docs#tag/Corretoras
  class Realtor < Base
    class << self
      BASE_URL = "cvm/corretoras/v1"

      # List all realtors
      #
      # @return [Array<Hash>]
      def all
        request :get, BASE_URL
      end

      # Find a realtor
      #
      # @param cnpj [String]
      # @return [Hash]
      def find(cnpj)
        request :get, "#{BASE_URL}/#{cnpj}"
      end
    end
  end
end
