# CbrCurrency

Ruby gem for retrieving currencies data from The Central Bank of the Russian Federation

## Installation

Put to Gemfile:

    gem 'cbr_currency'

Or install it manually:

    $ gem install cbr_currency

## Usage

    CbrCurrency.call

`CbrCurrency.call` will give you a collection of objects:

    [
      #<CbrCurrency::Currency:0x007fee0ca436c8 @code=:aud, @rate=42.4964, @title="Австралийский доллар", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca42d40 @code=:azn, @rate=54.5745, @title="Азербайджанский манат", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca42868 @code=:gbp, @rate=89.8108, @title="Фунт стерлингов Соединенного королевства", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca42368 @code=:amd, @rate=0.12002700000000001, @title="Армянских драмов", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca41e68 @code=:byr, @rate=0.00376734, @title="Белорусских рублей", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca41990 @code=:bgn, @rate=32.2162, @title="Болгарский лев", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca41328 @code=:brl, @rate=17.8047, @title="Бразильский реал", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca40e28 @code=:huf, @rate=0.20408400000000002, @title="Венгерских форинтов", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca40838 @code=:dkk, @rate=8.44503, @title="Датских крон", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca403d8 @code=:usd, @rate=57.3578, @title="Доллар США", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca408b0 @code=:eur, @rate=62.933, @title="Евро", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca3be50 @code=:inr, @rate=0.9006489999999999, @title="Индийских рупий", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca3b7c0 @code=:kzt, @rate=0.306628, @title="Казахстанских тенге", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca3ae38 @code=:cad, @rate=44.186, @title="Канадский доллар", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca3a758 @code=:kgs, @rate=0.915906, @title="Киргизских сомов", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca3a028 @code=:cny, @rate=9.23681, @title="Китайских юаней", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca39948 @code=:mdl, @rate=3.01091, @title="Молдавских леев", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca39380 @code=:nok, @rate=7.0343100000000005, @title="Норвежских крон", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca38ef8 @code=:pln, @rate=15.2633, @title="Польский злотый", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca38ac0 @code=:ron, @rate=14.2483, @title="Новый румынский лей", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca386b0 @code=:xdr, @rate=79.9017, @title="СДР (специальные права заимствования)", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca38200 @code=:sgd, @rate=41.9773, @title="Сингапурский доллар", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca39ec0 @code=:tjs, @rate=9.156740000000001, @title="Таджикских сомони", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca33e30 @code=:try, @rate=21.0657, @title="Турецкая лира", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca339d0 @code=:tmt, @rate=16.3983, @title="Новый туркменский манат", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca33480 @code=:uzs, @rate=0.0223182, @title="Узбекских сумов", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca32fd0 @code=:uah, @rate=2.59479, @title="Украинских гривен", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca32a80 @code=:czk, @rate=2.3301, @title="Чешских крон", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca325a8 @code=:sek, @rate=6.6945, @title="Шведских крон", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca32080 @code=:chf, @rate=60.1109, @title="Швейцарский франк", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca31bd0 @code=:zar, @rate=4.6228, @title="Южноафриканских рэндов", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca31630 @code=:krw, @rate=0.049388100000000004, @title="Вон Республики Корея", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007fee0ca31180 @code=:jpy, @rate=0.46332900000000005, @title="Японских иен", @date=#<Date: 2015-07-24 ((2457228j,0s,0n),+0s,2299161j)>>]

`@rate` - shows how many Rubles should be given for 1 Euro, or Japanese Yen, or Turkish Lira, etc. For example, you should give 62,93 Russian Rubles for 1 Euro; or 0.46 Rubles (or 46 kopecks) for 1 Japanese Yen.

## Configuration

    CbrCurrency.configure |config| do
      config.cbr_uri = "www.example.com"
      config.logger = mylogger
    end

It is expected, that `cbr_uri` gives an XML of the following format:

    <ValCurs Date="24.07.2015" name="Foreign Currency Market">
      <Valute ID="R01010">
        <NumCode>036</NumCode>
        <CharCode>AUD</CharCode>
        <Nominal>1</Nominal>
        <Name>Австралийский доллар</Name>
        <Value>42,4964</Value>
      </Valute>
    </ValCurs>

By default `cbr_uri = "http://www.cbr.ru/scripts/XML_daily.asp"`.
By default `logger` is able to use Rails logger if you integrate this gem to a Rails app, otherwise Logging to STDOUT will be used.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

