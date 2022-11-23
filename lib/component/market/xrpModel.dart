import 'package:flutter/material.dart';
import 'package:crypto_template/com/ugoc/flutter/coingecko/CoinMarketModel.dart';

class xrpMarket {
  String icon, name, pairValue, priceValue, priceDollar, percent;
  Color colorChg;
  dynamic data;
  xrpMarket(
      {this.icon,
      this.name,
      this.pairValue,
      this.percent,
      this.priceDollar,
      this.priceValue,
      this.colorChg,
      this.data}) {
    final _value_change = double.parse(percent.replaceAll('%', ''));
    if (_value_change > 0) {
      colorChg = Colors.greenAccent;
    } else if (_value_change == 0) {
      colorChg = Colors.white;
    } else {
      colorChg = Colors.redAccent;
    }
  }

  factory xrpMarket.fromCoinMarketModel(CoinMarketModel model) {
    return xrpMarket(
        icon: model.image,
        name: model.symbol.toUpperCase(),
        priceValue: model.current_price.toString(),
        priceDollar: '0',
        percent: model.price_change_percentage_24h.toString(),
        data: model.sparkline_in_7d.price);
  }
}

List<xrpMarket> xrpMarketList = [
  xrpMarket(
      icon: "assets/image/market/BCH.png",
      name: "BCH",
      pairValue: "1.7",
      priceValue: "0.0003214",
      priceDollar: "\$158.5432",
      percent: "-0.44%",
      colorChg: Colors.red),
  xrpMarket(
      icon: "assets/image/market/bee.png",
      name: "BEE",
      pairValue: "0.8",
      priceValue: "0.000086",
      priceDollar: "\$0.00343",
      percent: "-2.27%",
      colorChg: Colors.red),
  xrpMarket(
      icon: "assets/image/market/dnt.png",
      name: "DNT",
      pairValue: "0.2",
      priceValue: "0.0000359",
      priceDollar: "\$0.01432",
      percent: "-2.97%",
      colorChg: Colors.red),
  xrpMarket(
      icon: "assets/image/market/EOS.png",
      name: "EOS",
      pairValue: "0.6",
      priceValue: "0.0001645",
      priceDollar: "\$3.3932",
      percent: "+0.03%",
      colorChg: Color(0xFF00C087)),
  xrpMarket(
      icon: "assets/image/market/ETC.png",
      name: "ETC",
      pairValue: "0.8",
      priceValue: "0.0011011",
      priceDollar: "\$4.539122",
      percent: "+3.36%",
      colorChg: Color(0xFF00C087)),
  xrpMarket(
      icon: "assets/image/market/eth.png",
      name: "ETH",
      pairValue: "380.8",
      priceValue: "0.0364231",
      priceDollar: "\$137.539122",
      percent: "+1.36%",
      colorChg: Color(0xFF00C087)),
  xrpMarket(
      icon: "assets/image/market/NEO.png",
      name: "NEO",
      pairValue: "2.6",
      priceValue: "0.0064231",
      priceDollar: "\$9.129122",
      percent: "+0.36%",
      colorChg: Color(0xFF00C087)),
  xrpMarket(
      icon: "assets/image/market/ae.png",
      name: "AE",
      pairValue: "0.5",
      priceValue: "0.0001164",
      priceDollar: "\$0.4632",
      percent: "-0.18%",
      colorChg: Colors.red),
  xrpMarket(
      icon: "assets/image/market/elf.png",
      name: "ELF",
      pairValue: "0.5",
      priceValue: "0.0004193",
      priceDollar: "\$0.000132",
      percent: "+0.18%",
      colorChg: Color(0xFF00C087)),
];
