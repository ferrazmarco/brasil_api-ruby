# frozen_string_literal: true

module BrasilApi
  module Http
    # https://brasilapi.com.br/docs#tag/CEP
    module Cep
      PATH = "cep/v1"

      # Get a CEP info
      #
      # @param zipcode [String]
      # @return [Hash]
      def cep(zipcode)
        Http.request :get, "#{PATH}/#{zipcode}"
      end
    end
  end
end
