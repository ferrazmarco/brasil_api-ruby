# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::Holiday do
  it "list all holidays of a year" do
    VCR.use_cassette("holiday/year") do
      response = described_class.year(2023)

      expect(response).to be_a(Array)
    end
  end
end
