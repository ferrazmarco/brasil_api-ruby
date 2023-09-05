# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::CNPJ do
  it "find a valid cnpj" do
    VCR.use_cassette("cnpj/find") do
      response = described_class.find("51733354000186")

      expect(response).to be_a(Hash)
    end
  end
end
