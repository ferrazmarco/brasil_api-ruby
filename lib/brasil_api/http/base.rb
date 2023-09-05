# frozen_string_literal: true

require_relative "../connection"

module BrasilApi
  class Base
    class << self; include BrasilApi::Connection end
  end
end
