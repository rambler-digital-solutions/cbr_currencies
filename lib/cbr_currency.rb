require 'logging'
require 'cbr_currency/version'
require 'cbr_currency/fetcher'
require 'cbr_currency/currency'
require 'cbr_currency/configuration'

module CbrCurrency
  class << self
    attr_writer :configuration
  end

  def self.configure
    yield configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.call
    fetcher = CbrCurrency::Fetcher.new
    fetcher.call
  end
end
