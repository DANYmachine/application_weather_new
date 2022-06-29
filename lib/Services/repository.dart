// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables
import 'dart:developer';
import 'package:application_weather_new/Services/drift/app_db.dart';

import 'DB/model.dart';
import 'Provider/CitiesJSON.dart';
import 'Provider/provider.dart';
import 'injections_container.dart';

class CitiesRepository {
  List<City> citiesDB = [];
  List<CitiesJSON> citiesJson = [];

  /*CitiesEntityCompanion entity = CitiesEntityCompanion(
        id: drift.Value(note.id),
        idCity: drift.Value(note.idCity),
        city: drift.Value(note.city),
        curTemp: drift.Value(note.curTemp),
        feelsLike: drift.Value(note.feelsLike),
        description: drift.Value(note.description),
        currently: drift.Value(note.currently),
        humidity: drift.Value(note.humidity),
        windVelocity: drift.Value(note.windVelocity),
        iconCode: drift.Value(note.iconCode),
        windDirection: drift.Value(note.windDirection),
        population: drift.Value(note.population),
        pressure: drift.Value(note.pressure),
        clouds: drift.Value(note.clouds),
        state: drift.Value(note.state),
        sunrise: drift.Value(note.sunrise),
        sunset: drift.Value(note.sunset),
        dayLength: drift.Value(note.dayLength),
        iconUri: drift.Value(note.iconUri),
        country: drift.Value(note.country),
        lon: drift.Value(note.lon),
        lat: drift.Value(note.lat),
      );*/
/*
  Future<List<City>> GetCitiesList() async {
    citiesDB = await AppDb().getCitiesListFromDB();
    log(citiesDB.length.toString());
    for (var city in citiesDB) {
      await dependency<Provider>().getWeather(city);
    }

    return citiesDB;
  }

  Future<void> AddNewCity(City ct) async {
    await dependency<Provider>().getWeather(ct);
    log(ct.toString());
    citiesDB.add(ct);
    await GetCitiesList();
  }

  Future<void> DeleteCity(int id) async {
    citiesDB.removeAt(id);
    await GetCitiesList();
  }*/
}
