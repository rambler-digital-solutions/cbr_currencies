module CbrCurrency
  class Currency
    attr_accessor :code, :rate, :title, :date

    def initialize(code:, cost:, title:, amount: 1, date:)
      @code = code.downcase.to_sym
      @rate = normalize_rate cost, amount
      @title = title
      @date = Date.parse(date) rescue nil
    end

    private

    def normalize_rate(cost, amount)
      cost.gsub(',', '.').to_f / amount.to_f
    end
  end
end
