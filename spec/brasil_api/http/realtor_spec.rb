# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::Realtor do
  it "list all realtors" do
    VCR.use_cassette("realtor/all") do
      response = described_class.all

      expect(response).to be_a(Array)
    end
  end

  it "find a realtor given a CNPJ" do
    VCR.use_cassette("realtor/find") do
      response = described_class.find("02332886000104")

      expect(response).to be_a(Hash)
    end
  end
end
