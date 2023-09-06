# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::DDD do
  it "find state and list the cities given an DDD" do
    VCR.use_cassette("ddd/find") do
      response = described_class.find(13)

      expect(response).to be_a(Hash)
    end
  end
end
