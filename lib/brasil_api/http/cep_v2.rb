# frozen_string_literal: true

module BrasilApi
  # https://brasilapi.com.br/docs#tag/CEP
  class CEPV2 < Base
    class << self
      PATH = "cep/v2"

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
