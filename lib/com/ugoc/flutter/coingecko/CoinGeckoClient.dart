import 'dart:convert';

import 'package:crypto_template/com/ugoc/flutter/coingecko/CoinsMarketUrl.dart';
import 'package:crypto_template/com/ugoc/flutter/network/HttpManager.dart';
import 'package:crypto_template/com/ugoc/flutter/coingecko/CoinMarketModel.dart';
import 'package:crypto_template/com/ugoc/flutter/coingecko/CoinsTrendingUrl.dart';
import 'package:crypto_template/com/ugoc/flutter/coingecko/CoinTrendingModel.dart';
//import 'package:crypto_template/com/ugoc/flutter/coingecko/';

class CoinGeckoClient {
  final String BASE_URL = 'https://api.coingecko.com/api/v3/';

  Future<List<CoinMarketModel>> getTopCoinsMarkets(
      {String vs_currency,
      String category,
      String order,
      String price_change_percentage,
      bool sparkline,
      int per_page}) async {
    String url = BASE_URL +
        CoinsMarketUrl(
                per_page: per_page,
                vs_currency: vs_currency,
                category: category,
                order: order,
                price_change_percentage: price_change_percentage,
                sparkline: sparkline)
            .toString();
    //print(url);
    HttpManager http = HttpManager();
    String response = await http.get(url);
    List<CoinMarketModel> coins = [];
    final parsed = jsonDecode(response);
    //print(response);
    if (parsed != null) {
      parsed.forEach((v) {
        coins.add(CoinMarketModel.fromJson(v));
      });
    }
    return coins;
  }

  Future<List<CoinTrendingModel>> getTrendingCoins() async {
    String url = BASE_URL + CoinsTrendingUrl().toString();
    //print(url);
    HttpManager http = HttpManager();
    String response = await http.get(url);
    List<CoinTrendingModel> coins = [];
    final parsed = jsonDecode(response);

    ///print(response);
    if (parsed != null) {
      final coin_map = parsed['coins'];
      //print("index ");
      //print(coin_map.length);
      coin_map.forEach((v) {
        coins.add(CoinTrendingModel.fromJson(v['item']));
      });
    }
    return coins;
  }
}
