# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::Bank do
  it "list all banks" do
    response = described_class.list

    expect(response).to be_a(Array)
  end

  it "find a bank given his identifier code" do
    response = described_class.find(1)

    expect(response).to be_a(Hash)
  end
end
