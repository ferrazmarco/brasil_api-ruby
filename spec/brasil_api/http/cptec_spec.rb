# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::CPTEC do
  it "list all locations" do
    VCR.use_cassette("cptec/cities") do
      response = described_class.cities

      expect(response).to be_a(Array)
    end
  end

  it "find a city with the name" do
    VCR.use_cassette("cptec/find_city") do
      response = described_class.cities("praia grande")

      expect(response).to be_a(Array)
    end
  end
end
