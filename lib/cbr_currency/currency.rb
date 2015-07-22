module CbrCurrency
  class Currency
    attr_accessor :char_code, :value, :title, :date

    def initialize(char_code:, value:, title:, nominal:, date:)
      @char_code = char_code.downcase.to_sym
      @value = normalize_value value, nominal
      @title = title
      @date = Date.parse date
    end

    private

    def normalize_value(value, nominal)
      value.gsub(',', '.').to_f / nominal.to_f
    end
  end
end