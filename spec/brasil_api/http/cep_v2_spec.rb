# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::CepV2 do
  it "find a valid zipcode" do
    response = described_class.find("01311914")

    expect(response).to be_a(Hash)
  end
end
