// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import '../../classes/Methods/7DaysWeather.dart';
import '../../classes/Methods/Weather.dart';
import '../DB/model.dart';
import 'package:http/http.dart' as http;

import '../injections_container.dart';
import '../repository.dart';
import 'CitiesJSON.dart';

const apiKey = 'd287b61c753eb143ff4104dd40b73e90';
const weatherService = 'https://api.openweathermap.org/data/2.5/weather?q=';
const oneCall = 'https://api.openweathermap.org/data/2.5/onecall?';
const imgService = 'http://openweathermap.org/img/wn/';

class Provider {
  var _rep;

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('lib/assets/cities.json');
    final data = await jsonDecode(response);

    for (var note in data) {
      var ct = CitiesJSON(
        note['id'].toString(),
        note['name'],
        note['state'],
        note['country'],
        note['coord']['lon'],
        note['coord']['lat'],
      );
      dependency<CitiesRepository>().citiesJson.add(ct);

      /*final entity = CitiesEntityCompanion(
      idCity: drift.Value(ct.id),
      city: drift.Value(ct.name),
      state: drift.Value(ct.state),
      country: drift.Value(ct.country),
      lon: drift.Value(ct.lon),
      lat: drift.Value(ct.lat),
    );*/
      //AppDb().insertLocalCity(entity);
    }
    log(dependency<CitiesRepository>().citiesJson.length.toString());
  }

  Future GetFullInfo() async {
    _rep = dependency.get<CitiesRepository>();
    for (var city in dependency<CitiesRepository>().citiesDB) {
      await getWeather(city);
    }
  }

  Future<City> getWeather(City city) async {
    final str3 = Uri.parse(
      '$weatherService${city.city}&exclude=minutely&appid=$apiKey&units=metric',
    );

    http.Response response3 = await http.get(str3);
    var res3 = jsonDecode(response3.body);

    city.longitude = res3['coord']['lon'];
    city.latitude = res3['coord']['lat'];
    city.country = res3['sys']['country'];

    log('${city.longitude}\t${city.latitude}');

    final str1 = Uri.parse(
      '${oneCall}lat=${city.latitude}&lon=${city.longitude}&appid=d287b61c753eb143ff4104dd40b73e90&units=metric',
    );

    http.Response response = await http.get(str1);
    var res = jsonDecode(response.body);

    city.sunrise = DateFormat.Hm().format(
      DateTime.fromMillisecondsSinceEpoch(
          res['current']['sunrise'] * Duration.millisecondsPerSecond),
    );
    city.sunset = DateFormat.Hm().format(
      DateTime.fromMillisecondsSinceEpoch(
          res['current']['sunset'] * Duration.millisecondsPerSecond),
    );

    city.dayLength = DateFormat.Hm().format(
      DateTime.fromMicrosecondsSinceEpoch(
        (res['current']['sunset'] - res['current']['sunrise']) *
            Duration.millisecondsPerSecond,
      ),
    );

    for (var ct in res['hourly']) {
      var date = DateTime.fromMillisecondsSinceEpoch(
          ct['dt'] * Duration.millisecondsPerSecond);
      city.list.add(
        Weather(
          'http://openweathermap.org/img/wn/${ct['weather'][0]['icon']}@2x.png',
          ct['temp']?.round() ?? 0,
          DateFormat.Hm().format(date).toString() == '00:00'
              ? DateFormat.MMMd().format(date)
              : DateFormat.Hm().format(date),
        ),
      );
    }

    for (int i = 0; i < 7; i++) {
      var r = res['daily'];
      var date = DateTime.fromMillisecondsSinceEpoch(r[i]['dt']);

      city.dailyList.add(
        Weather(
          'http://openweathermap.org/img/wn/${r[i]['weather'][0]['icon']}@2x.png',
          r[i]['temp']['day']?.round() ?? 0,
          DateFormat.MMMd().format(date),
        ),
      );

      city.tileList.add(
        WeeklyWeather(
          '${r[i]['weather'][0]['icon']}',
          (r[i]['temp']['day']?.round() ?? 0).toDouble(),
          DateFormat.MMMd().format(date),
        ).widget,
      );
    }

    city.curTemp = (res['current']['temp']);
    city.feelsLike = (res['current']['feels_like']);
    city.pressure = res['current']['pressure'];
    city.description = res['current']['weather'][0]['description'];
    city.currently = res['current']['weather'][0]['main'];
    city.humidity = res['current']['humidity'];
    city.windVelocity = res['current']['wind_speed'];
    city.iconCode = res['current']['weather'][0]['icon'];
    city.clouds = res['current']['clouds'];
    city.dt = (DateTime.now().millisecondsSinceEpoch / 1000).round();
    city.windDirection = res['current']['wind_deg'];
    city.iconUri = '$imgService${city.iconCode}@2x.png';

    log(city.toString());

    return city;
  }
}
