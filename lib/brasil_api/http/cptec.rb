# frozen_string_literal: true

module BrasilApi
  # https://brasilapi.com.br/docs#tag/CPTEC
  class CPTEC < Base
    class << self
      BASE_URL = "cptec/v1/cidade"

      # list all the find cities
      #
      # @param city_name [String] name of the city
      # @return [Array<Hash>]
      def cities(city_name = "")
        path = city_name.empty? ? BASE_URL : "#{BASE_URL}/#{encode_string(city_name)}"

        request :get, path
      end
    end
  end
end
