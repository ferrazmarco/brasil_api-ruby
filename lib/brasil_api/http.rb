# frozen_string_literal: true

require_relative "connection"

module BrasilApi
  module Http
    class << self
      include BrasilApi::Connection
    end
  end
end
