# frozen_string_literal: true

module BrasilApi
  # https://brasilapi.com.br/docs#tag/CPTEC
  class CPTEC < Base
    class << self
      BASE_URL = "cptec/v1"

      # list all the find cities
      #
      # @param city_name [String] name of the city
      # @return [Array<Hash>]
      def cities(city_name = "")
        path = city_name.empty? ? "#{BASE_URL}/cidade" : "#{BASE_URL}/cidade/#{encode_string(city_name)}"

        request :get, path
      end

      # list the weather in capital
      #
      # @return [Array<Hash>]
      def weather_capitals
        request :get, "#{BASE_URL}/clima/capital"
      end

      # list the weather in airports
      #
      # @param airport_code [String]
      # @return [Hash]
      def weather_airports(airport_code)
        request :get, "#{BASE_URL}/clima/aeroporto/#{airport_code}"
      end

      # list the forecast weather of a city
      #
      # @param city_code [Integer]
      # @param days [Integer]
      # @return [Hash]
      def forecast(city_code, days = nil)
        path = "#{BASE_URL}/clima/previsao/#{city_code}"
        path += "/#{days}" unless days.nil?

        request :get, path
      end

      # fetch the ocean forecast given a city code
      #
      # @param city_code [Integer]
      # @param days [Integer]
      # @return [Hash]
      def ocean_forecast(city_code, days = nil)
        path = "#{BASE_URL}/ondas/#{city_code}"
        path += "/#{days}" unless days.nil?

        request :get, path
      end
    end
  end
end
