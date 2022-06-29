// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/widgets.dart';

class City {
  int? id;
  String? city;
  String? idCity;
  double? curTemp;
  double? feelsLike;
  String? description;
  String? currently;
  int? humidity;
  int? windVelocity;
  String? iconCode;
  int? dt;
  var windDirection;
  int? population;
  int? pressure;
  var clouds;
  String? country;
  String? sunrise;
  String? sunset;
  String? dayLength;
  double? longitude;
  double? latitude;
  String? iconUri;
  String? state;

  var list = [];
  var dailyList = [];
  List<Widget> tileList = [];

  City({
    this.id,
    this.city,
    this.idCity,
    this.curTemp,
    this.feelsLike,
    this.description,
    this.currently,
    this.humidity,
    this.windVelocity,
    this.iconCode,
    this.dt,
    this.windDirection,
    this.population,
    this.pressure,
    this.clouds,
    this.country,
    this.sunrise,
    this.sunset,
    this.dayLength,
    this.longitude,
    this.latitude,
    this.iconUri,
    this.state,
  });

  @override
  String toString() {
    // TODO: implement toString
    return "$city, $curTemp";
  }
}
