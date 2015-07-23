require 'nokogiri'

module CbrCurrency
  class Fetcher
    # FIXME: move it somewhere else
    DEFAULT_URI = "http://www.cbr.ru/scripts/XML_daily.asp"

    class << self
      def call
        xml = fetch_xml DEFAULT_URI
        return unless xml

        currencies = fetch_currencies xml
        normalized = currencies.map { |currency| extract_currency currency }
        entities = normalized.map { |currency| Currency.new currency }
      end

      private

      def fetch_xml(uri)
        uri = URI(uri)
        file = Net::HTTP.get uri

        Nokogiri::XML file
      rescue *exceptions => e
        nil
      end

      def fetch_currencies(xml)
        xml.xpath("//Valute")
      end

      # NOTE: учесть некорректный xml
      def extract_currency(xml)
        {
          code: xml.xpath("CharCode").text,
          cost: xml.xpath("Value").text,
          title: xml.xpath("Name").text,
          amount: xml.xpath("Nominal").text,
          date: xml.xpath("//ValCurs").attr("Date").value
        }
      end

      def exceptions
        [Timeout::Error, Errno::EINVAL, Errno::ECONNRESET, EOFError, Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError, Net::ProtocolError]
      end
    end
  end
end
