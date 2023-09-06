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

  it "fetch the weather forecast of a city" do
    VCR.use_cassette("cptec/forecast") do
      response = described_class.forecast(4178)

      expect(response).to be_a(Hash)
    end
  end

  it "fetch the weather forecast for a range of days" do
    VCR.use_cassette("cptec/forecast_days") do
      response = described_class.forecast(4178, 3)

      expect(response).to be_a(Hash)
    end
  end

  it "fetch the ocean forecast for a city" do
    VCR.use_cassette("cptec/ocean_forecast") do
      response = described_class.ocean_forecast(241)

      expect(response).to be_a(Hash)
    end
  end

  it "fetch the ocean forecast for a range of days" do
    VCR.use_cassette("cptec/ocean_forecast_days") do
      response = described_class.ocean_forecast(241, 4)

      expect(response).to be_a(Hash)
    end
  end
end
