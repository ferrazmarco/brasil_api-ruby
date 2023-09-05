# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::Connection do
  let(:klass) { Class.new { extend BrasilApi::Connection } }

  it "should stablish a connection" do
    expect(klass.connection).to be_a(Faraday::Connection)
  end
end
