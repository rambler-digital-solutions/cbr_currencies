module CbrCurrency
  class Fetcher
    # FIXME: move it somewhere else
    DEFAULT_URI = "http://www.cbr.ru/scripts/XML_daily.asp"

    class << self
      def call
        xml = fetch_xml

        return unless xml

        xml_valutes = xml.xpath("//Valute").map { |node| normalize_valute(node) }

        xml_valutes.map { |valute| Currency.new(valute) }
      end

      private

      def fetch_xml(path = DEFAULT_URI)
        uri = URI(path)
        file = Net::HTTP.get uri

        Nokogiri::XML file
      rescue Timeout::Error, Errno::EINVAL, Errno::ECONNRESET, EOFError,
             Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError, Net::ProtocolError => e
        nil
      end

      def normalize_valute(xml_valute)
        {
          char_code: xml_valute.xpath("CharCode").text,
          value: xml_valute.xpath("Value").text,
          title: xml_valute.xpath("Name").text,
          nominal: xml_valute.xpath("Nominal").text,
          date: xml_valute.xpath("//ValCurs").attr("Date").value
        }
      end
    end
  end
end