# frozen_string_literal: true

require_relative "brasil_api/version"
require_relative "brasil_api/connection"
require "cgi"

module BrasilApi
  class Base
    class << self
      include BrasilApi::Connection

      def encode_string(string)
        CGI.escape(string)
      end
    end
  end
end

Dir[File.join(__dir__, "brasil_api/http/**/*.rb")].sort.each do |file|
  require file
end
