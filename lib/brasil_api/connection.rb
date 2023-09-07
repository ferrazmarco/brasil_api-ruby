# frozen_string_literal: true

require "faraday"

module BrasilApi
  # HTTP connection to Brasil API
  module Connection
    def request(path, query = {})
      query.delete_if { |_k, v| v.nil? || v.to_s.empty? }

      connection.get(path) do |req|
        req.params = query
      end.body
    end

    private

    API_ENDPOINT = "https://brasilapi.com.br/api/"

    # @return [Faraday::Connection]
    def connection
      @connection = Faraday.new do |conn|
        conn.url_prefix = API_ENDPOINT
        conn.request :json
        conn.response :json, content_type: "application/json"
        conn.adapter Faraday.default_adapter
      end
    end
  end
end
