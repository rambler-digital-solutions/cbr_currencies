# CbrCurrency

Гем тащит курсы валют с [API ЦБ](http://www.cbr.ru/scripts/XML_daily.asp)

## Установка

В Gemfile:

    gem 'cbr_currency'

Или вручную:

    $ gem install cbr_currency

## Как пользоваться

    CbrCurrency::Fetcher.call

Вернет коллекцию:

    [
      #<CbrCurrency::Currency:0x007f8854909168 @char_code=:aud, @value=42.2371, @title="Австралийский доллар", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f8854903b28 @char_code=:azn, @value=54.2561, @title="Азербайджанский манат", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f8854903768 @char_code=:gbp, @value=89.0988, @title="Фунт стерлингов Соединенного королевства", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88549032b8 @char_code=:amd, @value=0.119046, @title="Армянских драмов", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f8854902ef8 @char_code=:byr, @value=0.00376391, @title="Белорусских рублей", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f8854902ae8 @char_code=:bgn, @value=31.9029, @title="Болгарский лев", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f8854902700 @char_code=:brl, @value=17.9346, @title="Бразильский реал", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f8854902318 @char_code=:huf, @value=0.20228200000000002, @title="Венгерских форинтов", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f8854901f58 @char_code=:dkk, @value=8.36191, @title="Датских крон", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f8854901b48 @char_code=:usd, @value=57.0232, @title="Доллар США", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f8854901670 @char_code=:eur, @value=62.3948, @title="Евро", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88549010a8 @char_code=:inr, @value=0.897508, @title="Индийских рупий", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88549009c8 @char_code=:kzt, @value=0.30483899999999997, @title="Казахстанских тенге", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f8854900180 @char_code=:cad, @value=43.9181, @title="Канадский доллар", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548fbd60 @char_code=:kgs, @value=0.908706, @title="Киргизских сомов", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548fb860 @char_code=:cny, @value=9.18322, @title="Китайских юаней", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548fb450 @char_code=:mdl, @value=2.98551, @title="Молдавских леев", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548fafc8 @char_code=:nok, @value=7.01487, @title="Норвежских крон", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548fab40 @char_code=:pln, @value=15.1159, @title="Польский злотый", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548fa758 @char_code=:ron, @value=14.1234, @title="Новый румынский лей", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548fa370 @char_code=:xdr, @value=79.2143, @title="СДР (специальные права заимствования)", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f9e98 @char_code=:sgd, @value=41.8396, @title="Сингапурский доллар", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f9a38 @char_code=:tjs, @value=9.10259, @title="Таджикских сомони", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f9628 @char_code=:try, @value=21.1275, @title="Турецкая лира", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f9218 @char_code=:tmt, @value=16.2993, @title="Новый туркменский манат", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f8de0 @char_code=:uzs, @value=0.0221535, @title="Узбекских сумов", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f89f8 @char_code=:uah, @value=2.58304, @title="Украинских гривен", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f85e8 @char_code=:czk, @value=2.30527, @title="Чешских крон", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f8200 @char_code=:sek, @value=6.660030000000001, @title="Шведских крон", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f9f38 @char_code=:chf, @value=59.5294, @title="Швейцарский франк", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f3cf0 @char_code=:zar, @value=4.61506, @title="Южноафриканских рэндов", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f3908 @char_code=:krw, @value=0.0494615, @title="Вон Республики Корея", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>,
      #<CbrCurrency::Currency:0x007f88548f3458 @char_code=:jpy, @value=0.460756, @title="Японских иен", @date=#<Date: 2015-07-23 ((2457227j,0s,0n),+0s,2299161j)>>
    ]

`@value` - это то, сколько надо заплатить рублей за 1 единицу иностранной валюты. Например, 1 евро стоит 62.39р, а 1 Вон Республики Корея стоит около 0.04р.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

