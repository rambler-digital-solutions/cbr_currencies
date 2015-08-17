require 'nokogiri'

module CbrCurrency
  class Fetcher
    def call
      xml = fetch_xml(
        CbrCurrency.configuration.cbr_uri,
        CbrCurrency.configuration.proxy_host,
        CbrCurrency.configuration.proxy_port
      )
      return unless xml

      currencies = fetch_currencies xml
      normalized = currencies.map { |currency| extract_currency currency }
      entities = normalized.map { |currency| Currency.new currency }
    end

    private

    def fetch_xml(uri, proxy_host, proxy_port)
      uri = URI(uri)
      http = Net::HTTP::Proxy(proxy_host, proxy_port)
      file = http.get(uri)

      Nokogiri::XML file
    rescue *exceptions => e
      CbrCurrency.configuration.logger.warn e

      nil
    end

    def fetch_currencies(xml)
      xml.xpath("//Valute")
    end

    def extract_currency(xml)
      code = xml.xpath("CharCode")
      cost = xml.xpath("Value")
      title = xml.xpath("Name")
      amount = xml.xpath("Nominal")
      date = xml.xpath("//ValCurs").attr("Date")

      raise ArgumentError.new("incorrect xml structure") unless code && cost && title && amount && date

      {
        code: code.text,
        cost: cost.text,
        title: title.text,
        amount: amount.text,
        date: date.value
      }
    end

    def exceptions
      [Timeout::Error, Errno::EINVAL, Errno::ECONNRESET, Errno::ECONNREFUSED, EOFError,
        Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError, Net::ProtocolError,
        Nokogiri::XML::SyntaxError]
    end
  end
end
