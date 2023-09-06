# frozen_string_literal: true

module BrasilApi
  class Holiday < Base
    class << self
      BASE_URL = "feriados/v1"

      # list of nationals holidays in a year
      #
      # @param year [Integer]
      # @return [Array<Hash>]
      def year(year)
        request "#{BASE_URL}/#{year}"
      end
    end
  end
end
