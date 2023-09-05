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

  it "list the weather in capitals" do
    VCR.use_cassette("cptec/weather_capitals") do
      response = described_class.weather_capitals

      expect(response).to be_a(Array)
    end
  end

  it "list the weather in airpots" do
    VCR.use_cassette("cptec/weather_airports") do
      response = described_class.weather_airports("SBAR")

      expect(response).to be_a(Hash)
    end
  end

  it "return the weather forecast of a city" do
    VCR.use_cassette("cptec/forecast") do
      response = described_class.forecast(4178)

      expect(response).to be_a(Hash)
    end
  end

  it "return the weather forecast for a range of days" do
    VCR.use_cassette("cptec/forecast_days") do
      response = described_class.forecast(4178, 3)

      expect(response).to be_a(Hash)
    end
  end
end
