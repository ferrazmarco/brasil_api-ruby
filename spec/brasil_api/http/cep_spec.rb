# frozen_string_literal: true

require "spec_helper"
require "byebug"

RSpec.describe BrasilApi::Http::Cep do
  let(:client) { BrasilApi::Client }

  it "cep" do
    response = client.cep("01311914")

    expect(response).to be_a(Hash)
  end
end
