# frozen_string_literal: true

require "faraday"

module BrasilApi
  # HTTP connection to Brasil API
  module Connection
    def request(method, path, body = {}, params = {})
      connection.send(method, path) do |req|
        req.body = body
        req.params = params
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
