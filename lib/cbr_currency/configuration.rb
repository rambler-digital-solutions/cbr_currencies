module CbrCurrency
  class Configuration
    attr_accessor :cbr_uri, :logger, :proxy_host, :proxy_port

    def initialize
      @cbr_uri = "http://www.cbr.ru/scripts/XML_daily.asp"
      @logger = defined?(Rails) ? Rails.logger : Logging.logger(STDOUT)
    end
  end
end
