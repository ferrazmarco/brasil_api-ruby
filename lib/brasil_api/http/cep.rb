# frozen_string_literal: true

module BrasilApi
  # https://brasilapi.com.br/docs#tag/CEP
  class CEP < Base
    class << self
      PATH = "cep/v1"

      # Get a CEP info
      #
      # @param zipcode [String]
      # @return [Hash]
      def find(zipcode)
        request :get, "#{PATH}/#{zipcode}"
      end
    end
  end
end
