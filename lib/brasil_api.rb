# frozen_string_literal: true

require_relative "brasil_api/version"

# require http objects
Dir["./lib/brasil_api/http/**/*.rb"].sort.each do |file|
  require file
end

module BrasilApi
end
