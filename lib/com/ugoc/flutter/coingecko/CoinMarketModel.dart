import 'package:crypto_template/com/ugoc/flutter/coingecko/SparklineModel.dart';

class CoinMarketModel {
  String id, symbol, name, image, ath_date, atl_date, last_updated;

  double current_price = 0,
      market_cap_rank = 0,
      fully_diluted_valuation = 0,
      total_volume = 0,
      market_cap = 0,
      high_24h = 0,
      low_24h = 0,
      price_change_24h = 0,
      price_change_percentage_24h = 0,
      market_cap_change_24h = 0,
      market_cap_change_percentage_24h = 0,
      price_change_percentage_24h_in_currency = 0,
      circulating_supply = 0,
      total_supply = 0,
      max_supply = 0,
      ath = 0,
      ath_change_percentage = 0,
      atl = 0,
      atl_change_percentage = 0,
      roi = 0;

  SparklineModel sparkline_in_7d = SparklineModel();

  CoinMarketModel({this.id, this.symbol, this.name, this.current_price});

  factory CoinMarketModel.fromJson(Map<String, dynamic> json) {
    String id = json['id'] as String;
    String symbol = json['symbol'];
    String name = json['name'];
    double current_price = getDouble(json['current_price']);

    CoinMarketModel coin = CoinMarketModel(
        id: id, symbol: symbol, name: name, current_price: current_price);

    coin.ath_date = json['ath_date'];
    coin.ath_date = json['ath_date'];
    coin.last_updated = json['last_updated'];
    coin.price_change_percentage_24h_in_currency =
        getDouble(json['price_change_percentage_24h_in_currency']);
    coin.current_price = getDouble(json['current_price']);
    coin.market_cap_rank = getDouble(json['market_cap_rank']);
    coin.fully_diluted_valuation = getDouble(json['fully_diluted_valuation']);
    coin.total_volume = getDouble(json['total_volume']);
    coin.market_cap = getDouble(json['market_cap']);
    coin.high_24h = getDouble(json['high_24h']);
    coin.low_24h = getDouble(json['low_24h']);
    coin.price_change_24h = getDouble(json['price_change_24h']);
    coin.price_change_percentage_24h =
        getDouble(json['price_change_percentage_24h']);
    coin.market_cap_change_24h = getDouble(json['market_cap_change_24h']);
    coin.market_cap_change_percentage_24h =
        getDouble(json['market_cap_change_percentage_24h']);
    coin.circulating_supply = getDouble(json['circulating_supply']);
    coin.total_supply = getDouble(json['total_supply']);
    coin.max_supply = getDouble(json['max_supply']);
    coin.ath = getDouble(json['ath']);
    coin.ath_change_percentage = getDouble(json['ath_change_percentage']);
    coin.atl = getDouble(json['atl']);
    coin.atl_change_percentage = getDouble(json['atl_change_percentage']);
    //coin.roi = json['roi']);
    List<dynamic> dynList = json['sparkline_in_7d']['price'];
    List<double> doubList = [];
    if (dynList != null && dynList.length > 0)
      dynList.forEach((element) {
        doubList.add(element);
      });
    coin.sparkline_in_7d.price = doubList;

    return coin;
  }

  static double getDouble(value) {
    return value == null ? 0.0 : value.toDouble();
  }
}
