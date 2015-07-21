# CbrCurrency

Гем тащит курсы валют с API ЦБ

## Установка

В Gemfile:

```ruby
gem 'cbr_currency'
```

Или вручную:

    $ gem install cbr_currency

## Как пользоваться

    CbrCurrency::Fetcher.call

Вернет коллекцию:

    [
      [ 0] #<CbrCurrency::Currency:0x007fb61d4fc240 @char_code=:aud, @value=42.0108, @title="Австралийский доллар", @nominal=1>,
      [ 1] #<CbrCurrency::Currency:0x007fb61d4fc088 @char_code=:azn, @value=54.2158, @title="Азербайджанский манат", @nominal=1>,
      [ 2] #<CbrCurrency::Currency:0x007fb61915fca8 @char_code=:gbp, @value=88.8327, @title="Фунт стерлингов Соединенного королевства", @nominal=1>,
      [ 3] #<CbrCurrency::Currency:0x007fb61915f898 @char_code=:amd, @value=11.8755, @title="Армянских драмов", @nominal=100>,
      [ 4] #<CbrCurrency::Currency:0x007fb61915f578 @char_code=:byr, @value=37.5016, @title="Белорусских рублей", @nominal=10000>,
      [ 5] #<CbrCurrency::Currency:0x007fb61915f348 @char_code=:bgn, @value=31.6294, @title="Болгарский лев", @nominal=1>,
      [ 6] #<CbrCurrency::Currency:0x007fb61915f118 @char_code=:brl, @value=17.83, @title="Бразильский реал", @nominal=1>,
      [ 7] #<CbrCurrency::Currency:0x007fb61915eee8 @char_code=:huf, @value=19.9897, @title="Венгерских форинтов", @nominal=100>,
      [ 8] #<CbrCurrency::Currency:0x007fb61915ec68 @char_code=:dkk, @value=82.9103, @title="Датских крон", @nominal=10>,
      [ 9] #<CbrCurrency::Currency:0x007fb61915ea10 @char_code=:usd, @value=57.0025, @title="Доллар США", @nominal=1>,
      [10] #<CbrCurrency::Currency:0x007fb61915e808 @char_code=:eur, @value=61.7622, @title="Евро", @nominal=1>,
      [11] #<CbrCurrency::Currency:0x007fb61915e5d8 @char_code=:inr, @value=89.6583, @title="Индийских рупий", @nominal=100>,
      [12] #<CbrCurrency::Currency:0x007fb61915e268 @char_code=:kzt, @value=30.4728, @title="Казахстанских тенге", @nominal=100>,
      [13] #<CbrCurrency::Currency:0x007fb61915dca0 @char_code=:cad, @value=43.8886, @title="Канадский доллар", @nominal=1>,
      [14] #<CbrCurrency::Currency:0x007fb61915d7a0 @char_code=:kgs, @value=90.5317, @title="Киргизских сомов", @nominal=100>,
      [15] #<CbrCurrency::Currency:0x007fb61915cdf0 @char_code=:cny, @value=91.7989, @title="Китайских юаней", @nominal=10>,
      [16] #<CbrCurrency::Currency:0x007fb61915c440 @char_code=:mdl, @value=30.1282, @title="Молдавских леев", @nominal=10>,
      [17] #<CbrCurrency::Currency:0x007fb61c65bf38 @char_code=:nok, @value=69.2896, @title="Норвежских крон", @nominal=10>,
      [18] #<CbrCurrency::Currency:0x007fb61c65bd80 @char_code=:pln, @value=15.0291, @title="Польский злотый", @nominal=1>,
      [19] #<CbrCurrency::Currency:0x007fb61c65bbc8 @char_code=:ron, @value=14.0128, @title="Новый румынский лей", @nominal=1>,
      [20] #<CbrCurrency::Currency:0x007fb61c65ba10 @char_code=:xdr, @value=79.152, @title="СДР (специальные права заимствования)", @nominal=1>,
      [21] #<CbrCurrency::Currency:0x007fb61c65b858 @char_code=:sgd, @value=41.6685, @title="Сингапурский доллар", @nominal=1>,
      [22] #<CbrCurrency::Currency:0x007fb61c65b6a0 @char_code=:tjs, @value=91.0045, @title="Таджикских сомони", @nominal=10>,
      [23] #<CbrCurrency::Currency:0x007fb61c65b4e8 @char_code=:try, @value=21.2371, @title="Турецкая лира", @nominal=1>,
      [24] #<CbrCurrency::Currency:0x007fb61c65b380 @char_code=:tmt, @value=16.2925, @title="Новый туркменский манат", @nominal=1>,
      [25] #<CbrCurrency::Currency:0x007fb61c65b1c8 @char_code=:uzs, @value=22.2666, @title="Узбекских сумов", @nominal=1000>,
      [26] #<CbrCurrency::Currency:0x007fb61c65b010 @char_code=:uah, @value=25.8515, @title="Украинских гривен", @nominal=10>,
      [27] #<CbrCurrency::Currency:0x007fb61c65ae58 @char_code=:czk, @value=22.8485, @title="Чешских крон", @nominal=10>,
      [28] #<CbrCurrency::Currency:0x007fb61c65aca0 @char_code=:sek, @value=66.047, @title="Шведских крон", @nominal=10>,
      [29] #<CbrCurrency::Currency:0x007fb61c65aae8 @char_code=:chf, @value=59.285, @title="Швейцарский франк", @nominal=1>,
      [30] #<CbrCurrency::Currency:0x007fb61c65a930 @char_code=:zar, @value=45.9698, @title="Южноафриканских рэндов", @nominal=10>,
      [31] #<CbrCurrency::Currency:0x007fb61c65a778 @char_code=:krw, @value=49.3915, @title="Вон Республики Корея", @nominal=1000>,
      [32] #<CbrCurrency::Currency:0x007fb61c65a5c0 @char_code=:jpy, @value=45.8385, @title="Японских иен", @nominal=100>
    ]

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

