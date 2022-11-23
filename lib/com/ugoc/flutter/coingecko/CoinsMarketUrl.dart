class CoinsMarketUrl {
  String path = 'coins/markets',
      vs_currency = 'usd',
      category = 'cryptocurrency',
      order = 'market_cap_desc',
      price_change_percentage = '24h';
  int per_page = 4, page = 1;
  bool sparkline = true;

  CoinsMarketUrl(
      {vs_currency,
      category,
      order,
      price_change_percentage,
      sparkline,
      per_page}) {
    this.vs_currency = vs_currency ?? 'usd';
    this.category = category ?? 'cryptocurrency';
    this.order = order ?? 'market_cap_desc';
    this.price_change_percentage = price_change_percentage ?? '24h';
    this.sparkline = sparkline ?? true;
    this.per_page = per_page ?? 4;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "${path}?vs_currency=${vs_currency}&category=${category}&order=${order}&price_change_percentage=${price_change_percentage}&per_page=${per_page}&page=${page}&sparkline=${sparkline}";
  }
}
