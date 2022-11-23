class CoinTrendingModel {
  String id, symbol, name, slug, thumb, small, large;

  double coin_id = 0, market_cap_rank = 0, score = 0, price_btc = 0;

  CoinTrendingModel({this.id, this.symbol, this.name, this.price_btc});

  factory CoinTrendingModel.fromJson(Map<String, dynamic> json) {
    String id = json['id'] as String;
    String symbol = json['symbol'];
    String name = json['name'];
    double price_btc = getDouble(json['price_btc']);

    CoinTrendingModel coin = CoinTrendingModel(
        id: id, symbol: symbol, name: name, price_btc: price_btc);

    coin.slug = json['slug'];
    coin.thumb = json['thumb'];
    coin.small = json['small'];
    coin.large = json['large'];
    coin.coin_id = getDouble(json['coin_id']);
    coin.score = getDouble(json['score']);
    coin.market_cap_rank = getDouble(json['market_cap_rank']);

    return coin;
  }

  static double getDouble(value) {
    return value == null ? 0.0 : value.toDouble();
  }
}
