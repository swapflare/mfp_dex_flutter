import 'package:crypto_template/com/ugoc/flutter/coingecko/CoinMarketModel.dart';
import 'package:flutter/material.dart';

class losers {
  String pair, lastPrice, chg;
  Color chartColor;
  List<Color> chartColorGradient;
  var data;
  losers({this.pair, this.lastPrice, this.chg, this.data}) {
    final _value_change = double.parse(chg.replaceAll('%', ''));
    if (_value_change > 0) {
      chartColor = Colors.greenAccent;
      chartColorGradient = [
        Colors.greenAccent.withOpacity(0.2),
        Colors.greenAccent.withOpacity(0.01)
      ];
    } else if (_value_change == 0) {
      chartColor = Colors.white;
      chartColorGradient = [
        Colors.white.withOpacity(0.2),
        Colors.white.withOpacity(0.01)
      ];
    } else {
      chartColor = Colors.redAccent;
      chartColorGradient = [
        Colors.redAccent.withOpacity(0.2),
        Colors.redAccent.withOpacity(0.01)
      ];
    }
  }

  factory losers.fromCoinMarketModel(CoinMarketModel model) {
    return losers(
        pair: model.symbol.toUpperCase(),
        lastPrice: model.current_price.toString(),
        chg: model.price_change_percentage_24h.toString(),
        data: model.sparkline_in_7d.price);
  }
}

List<losers> losersList = [
  losers(pair: "ENJ", lastPrice: "0.000003913", chg: "-20.58%"),
  losers(pair: "FET", lastPrice: "0.0005548", chg: "-14.53%"),
  losers(pair: "KNC", lastPrice: "0.000006158", chg: "-13.11%"),
  losers(pair: "RVN", lastPrice: "0.000000605", chg: "-12.32%"),
  losers(pair: "VIBE", lastPrice: "0.0001019", chg: "-12.23%"),
  losers(pair: "KNC", lastPrice: "0.0001419", chg: "-11.54%"),
  losers(pair: "VIBE", lastPrice: "0.0001719", chg: "-9.63%"),
  losers(pair: "GTO", lastPrice: "0.0001919", chg: "-8.23%"),
  losers(pair: "ENG", lastPrice: "0.0002112", chg: "-7.63%"),
  losers(pair: "BAT", lastPrice: "0.0002249", chg: "-6.23%"),
];
