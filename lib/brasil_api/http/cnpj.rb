# frozen_string_literal: true

module BrasilApi
  # https://brasilapi.com.br/docs#tag/CNPJ
  class CNPJ < Base
    class << self
      BASE_URL = "cnpj/v1"

      # Get CNPJ info
      #
      # @param cnpj [String]
      # @return [Hash]
      def find(cnpj)
        request "#{BASE_URL}/#{cnpj}"
      end
    end
  end
end
