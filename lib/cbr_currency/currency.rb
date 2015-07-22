module CbrCurrency
  class Currency
    attr_accessor :char_code, :value, :title, :nominal

    def initialize(char_code:, value:, title:, nominal:)
      @char_code = char_code.downcase.to_sym
      @value = normalize_value value, nominal
      @title = title
    end

    private

    def normalize_value(value, nominal)
      value.gsub(',', '.').to_f / nominal.to_f
    end
  end
end