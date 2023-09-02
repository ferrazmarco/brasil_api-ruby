# frozen_string_literal: true

Dir["./lib/**/*.rb"].sort.each do |file|
  require file
end

module BrasilApi
  # HTTP Client
  module Client
    class << self
      include BrasilApi::Http::Cep
    end
  end
end
