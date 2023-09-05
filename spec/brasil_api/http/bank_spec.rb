# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::Bank do
  it "list all banks" do
    VCR.use_cassette("bank/all") do
      response = described_class.all

      expect(response).to be_a(Array)
    end
  end

  it "find a bank given his identifier code" do
    VCR.use_cassette("bank/find") do
      response = described_class.find(1)

      expect(response).to be_a(Hash)
    end
  end
end
