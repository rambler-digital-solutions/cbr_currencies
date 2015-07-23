module CbrCurrency
  class Configuration
    attr_accessor :cbr_uri, :logger

    def initialize
      @cbr_uri = "http://www.cbr.ru/scripts/XML_daily.asp"
      @logger = Logging.logger(STDOUT)
    end
  end
end
