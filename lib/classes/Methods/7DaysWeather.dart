// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Pages/HomePage/1.HomePage.dart';

class WeeklyWeather {
  String? image;
  double? temp;
  String? date;
  var _widget;

  get widget => _widget;

  set widget(widget) {
    _widget = widget;
  }

  WeeklyWeather(this.image, this.temp, this.date) {
    _widget = Container(
      padding: const EdgeInsets.all(5),
      child: Material(
        color: Colors.lightBlueAccent.withOpacity(0.4),
        borderRadius: BorderRadius.circular(15),
        child: ListTile(
          leading: Image.network(
            'http://openweathermap.org/img/wn/$image@2x.png',
          ),
          trailing: Text(
            '${temp!.round()} \u00B0C',
            style: TextStyle(color: fontColor),
          ),
          title: Text(
            date!,
            style: TextStyle(color: fontColor),
          ),
        ),
      ),
    );
  }
}
