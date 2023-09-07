# frozen_string_literal: true

require "spec_helper"

RSpec.describe BrasilApi::FIPE do # rubocop:disable Metrics/BlockLength
  it "list all vehicles" do
    VCR.use_cassette("fipe/all") do
      response = described_class.brands

      expect(response).to be_a(Array)
    end
  end

  it "list vehicles by type" do
    VCR.use_cassette("fipe/find") do
      response = described_class.brands_by(type: "carros")

      expect(response).to be_a(Array)
    end
  end

  it "list vehicles by FIPE table" do
    VCR.use_cassette("fipe/find_table") do
      response = described_class.brands_by(fipe_table: 271)

      expect(response).to be_a(Array)
    end
  end

  it "list vehicles by FIPE table and type" do
    VCR.use_cassette("fipe/find_code") do
      response = described_class.brands_by(type: "carros", fipe_table: 271)

      expect(response).to be_a(Array)
    end
  end

  it "list vehicle prices by FIPE code" do
    VCR.use_cassette("fipe/prices_fipe") do
      response = described_class.prices_by(fipe_code: "017092-5")

      expect(response).to be_a(Array)
    end
  end

  it "list vehicle prices by FIPE Code and FIPE Table" do
    VCR.use_cassette("fipe/prices_table") do
      response = described_class.prices_by(fipe_code: "017092-5", fipe_table: 300)

      expect(response).to be_a(Array)
    end
  end

  it "list all fipe table" do
    VCR.use_cassette("fipe/fipe_table") do
      response = described_class.tables

      expect(response).to be_a(Array)
    end
  end
end
