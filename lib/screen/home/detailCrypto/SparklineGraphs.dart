import 'package:crypto_template/component/gainersModel.dart';
import 'package:crypto_template/component/loserModel.dart';
import 'package:crypto_template/component/modelGridHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

Widget verticalGraphicsScaleGainers(BuildContext context, gainers item) {
  double _maxValue = 0;
  List<double> _data = item.data;
  if (_data != null && _data.length > 0) {
    _data.forEach((element) {
      _maxValue = element > _maxValue ? element : _maxValue;
    });
  }
  int _num = 5;
  int _del = (_maxValue / _num).toInt();
  List<Stack> _stacks = [];
  for (int i = 0; i <= _num; i++) {
    double _val = _maxValue - (i * _del);
    if (i == _num) _val = 0.00;
    _stacks.add(
      Stack(children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 70.0),
            child: Container(
              height: 0.2,
              width: double.infinity,
              color: Theme.of(context).hintColor,
            )),
        Align(
            alignment: Alignment.centerRight,
            child: Text(
              '$_val',
              style: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontFamily: "Popins",
                  fontSize: 11.5),
            ))
      ]),
    );
  }
  return getVerticalBody(_stacks);
}

Widget verticalGraphicsScaleLosers(BuildContext context, losers item) {
  double _maxValue = 0;
  List<double> _data = item.data;
  if (_data != null && _data.length > 0) {
    _data.forEach((element) {
      _maxValue = element > _maxValue ? element : _maxValue;
    });
  }
  int _num = 5;
  int _del = (_maxValue / _num).toInt();
  List<Stack> _stacks = [];
  for (int i = 0; i <= _num; i++) {
    double _val = _maxValue - (i * _del);
    if (i == _num) _val = 0.00;
    _stacks.add(
      Stack(children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 70.0),
            child: Container(
              height: 0.2,
              width: double.infinity,
              color: Theme.of(context).hintColor,
            )),
        Align(
            alignment: Alignment.centerRight,
            child: Text(
              '$_val',
              style: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontFamily: "Popins",
                  fontSize: 11.5),
            ))
      ]),
    );
  }
  return getVerticalBody(_stacks);
}

Widget verticalGraphicsScaleGridhome(BuildContext context, gridHome item) {
  double _maxValue = 0;
  List<double> _data = item.data;
  if (_data != null && _data.length > 0) {
    _data.forEach((element) {
      _maxValue = element > _maxValue ? element : _maxValue;
    });
  }
  int _num = 5;
  int _del = (_maxValue / _num).toInt();
  List<Stack> _stacks = [];
  for (int i = 0; i <= _num; i++) {
    double _val = _maxValue - (i * _del);
    if (i == _num) _val = 0.00;
    _stacks.add(
      Stack(children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 70.0),
            child: Container(
              height: 0.2,
              width: double.infinity,
              color: Theme.of(context).hintColor,
            )),
        Align(
            alignment: Alignment.centerRight,
            child: Text(
              '$_val',
              style: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontFamily: "Popins",
                  fontSize: 11.5),
            ))
      ]),
    );
  }
  return getVerticalBody(_stacks);
}

Widget horizontalGraphicsScale(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "0d",
          style: TextStyle(
              color: Theme.of(context).hintColor,
              fontFamily: "Popins",
              fontSize: 11.5),
        ),
        Text(
          "1d",
          style: TextStyle(
              color: Theme.of(context).hintColor,
              fontFamily: "Popins",
              fontSize: 11.5),
        ),
        Text(
          "2d",
          style: TextStyle(
              color: Theme.of(context).hintColor,
              fontFamily: "Popins",
              fontSize: 11.5),
        ),
        Text(
          "3d",
          style: TextStyle(
              color: Theme.of(context).hintColor,
              fontFamily: "Popins",
              fontSize: 11.5),
        ),
        Text(
          "4d",
          style: TextStyle(
              color: Theme.of(context).hintColor,
              fontFamily: "Popins",
              fontSize: 11.5),
        ),
        Text(
          "5d",
          style: TextStyle(
              color: Theme.of(context).hintColor,
              fontFamily: "Popins",
              fontSize: 11.5),
        ),
        Text(
          "6d",
          style: TextStyle(
              color: Theme.of(context).hintColor,
              fontFamily: "Popins",
              fontSize: 11.5),
        ),
        Text(
          "7d",
          style: TextStyle(
              color: Theme.of(context).hintColor,
              fontFamily: "Popins",
              fontSize: 11.5),
        ),
      ],
    ),
  );
}

Widget getVerticalBody(List<Stack> _stacks) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 300.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: _stacks,
        ),
      ),
    ),
  );
}

Widget sparkLineGraficGainers(gainers item) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: new Sparkline(
      data: item.data,
      lineWidth: 0.3,
      fillMode: FillMode.below,
      lineColor: item.chartColor,
      fillGradient: new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: item.chartColorGradient,
      ),
    ),
  );
}

Widget sparkLineGraficLosers(losers item) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: new Sparkline(
      data: item.data,
      lineWidth: 0.3,
      fillMode: FillMode.below,
      lineColor: item.chartColor,
      fillGradient: new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: item.chartColorGradient,
      ),
    ),
  );
}

Widget sparkLineGraficGridhome(gridHome item) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: new Sparkline(
      data: item.data,
      lineWidth: 0.3,
      fillMode: FillMode.below,
      lineColor: item.chartColor,
      fillGradient: new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: item.chartColorGradient,
      ),
    ),
  );
}
