# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::CEP do
  it "find a valid zipcode" do
    VCR.use_cassette("cep/v1") do
      response = described_class.find("01311914")

      expect(response).to be_a(Hash)
    end
  end
end
