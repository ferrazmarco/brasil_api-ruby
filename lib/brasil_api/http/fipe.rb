# frozen_string_literal: true

module BrasilApi
  class FIPE < Base
    class << self
      # list vehicle brands by type and fipe code
      #
      # @param type [String] type of vehicle, e.g 'caminhoes', 'carros' and 'motos'
      # @param fipe_table [Integer]
      # @return [Array<Hash>]
      def brands_by(type: nil, fipe_table: nil)
        path = type.instance_of?(String) ? "fipe/marcas/v1/#{type}" : "fipe/marcas/v1"

        request path, { tabela_referencia: fipe_table }
      end

      alias brands brands_by

      # consult the vehicle prices given a fipe code
      #
      # @param fipe_code [String]
      # @param fipe_table [Integer]
      # @return [Array<Hash>]
      def prices_by(fipe_code:, fipe_table: nil)
        request "fipe/preco/v1/#{fipe_code}", { tabela_referencia: fipe_table }
      end

      # list all fipe tables
      #
      # @return [Array<Hash>]
      def tables
        request "fipe/tabelas/v1"
      end
    end
  end
end
