module CbrCurrency
  class Currency
    attr_accessor :char_code, :value, :title, :nominal

    def initialize(char_code:, value:, title:, nominal:)
      @char_code = char_code.downcase.to_sym
      @value = normalize_value value
      @title = title
      @nominal = normalize_nominal nominal
    end

    private

    def normalize_value(value)
      value.gsub(',', '.').to_f
    end

    def normalize_nominal(nominal)
      nominal.to_i
    end
  end
end