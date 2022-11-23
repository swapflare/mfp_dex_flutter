import 'package:crypto_template/com/ugoc/flutter/coingecko/CoinMarketModel.dart';
import 'package:flutter/material.dart';

class gainers {
  String pair, lastPrice, chg;
  Color chartColor;
  List<Color> chartColorGradient;
  var data;
  gainers({this.pair, this.lastPrice, this.chg, this.data}) {
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

  factory gainers.fromCoinMarketModel(CoinMarketModel model) {
    return gainers(
        pair: model.symbol.toUpperCase(),
        lastPrice: model.current_price.toString(),
        chg: model.price_change_percentage_24h.toString(),
        data: model.sparkline_in_7d.price);
  }
}

List<gainers> gainersList = [
  gainers(pair: "GRS", lastPrice: "0.000013278", chg: "+114.26%"),
  gainers(pair: "VIA", lastPrice: "0.00001319", chg: "+38.12%"),
  gainers(pair: "STORJ", lastPrice: "0.000007024", chg: "+19.29%"),
  gainers(pair: "CMT", lastPrice: "0.00000946", chg: "+17.22%"),
  gainers(pair: "GXS", lastPrice: "0.0002294", chg: "+9.92%"),
  gainers(pair: "GNT", lastPrice: "0.0002042", chg: "+8.32%"),
  gainers(pair: "EOS", lastPrice: "0.0003313", chg: "+5.92%"),
  gainers(pair: "SNT", lastPrice: "0.0016850", chg: "+4.00%"),
  gainers(pair: "BEE", lastPrice: "0.0002294", chg: "+2.92%"),
  gainers(pair: "BTT", lastPrice: "0.0001252", chg: "+1.92%"),
];
