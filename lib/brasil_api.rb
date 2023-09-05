# frozen_string_literal: true

require_relative "brasil_api/version"
require_relative "brasil_api/connection"

module BrasilApi
  class Base
    class << self; include BrasilApi::Connection end
  end
end

Dir["./lib/brasil_api/http/**/*.rb"].sort.each do |file|
  require file
end
