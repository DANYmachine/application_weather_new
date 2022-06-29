// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables
import 'dart:developer';
import 'package:application_weather_new/Services/drift/app_db.dart';
import 'package:drift/drift.dart' as drift;
import 'DB/model.dart';
import 'Provider/CitiesJSON.dart';
import 'Provider/provider.dart';
import 'injections_container.dart';

class CitiesRepository {
  List<City> citiesDB = [];
  List<CitiesJSON> citiesJson = [];

  /**/

  Future<List<City>> GetCitiesList() async {
    for (var note in await dependency<AppDb>().getLocalCities()) {
      var city = City(
        id: note.id,
        city: note.city,
        state: note.state,
        country: note.country,
        longitude: note.lon,
        latitude: note.lat,
      );
      await dependency<Provider>().getWeather(city);

      citiesDB.add(city);
    }
    log('Cities DB count: ${citiesDB.length}');
    return citiesDB;
  }

  Future<void> AddNewCity(CitiesJSON note) async {
    CitiesEntityCompanion entity = CitiesEntityCompanion(
      idCity: drift.Value(note.id),
      city: drift.Value(note.name),
      state: drift.Value(note.state),
      country: drift.Value(note.country),
      lon: drift.Value(note.lon),
      lat: drift.Value(note.lat),
    );
    var city = City(
      idCity: note.id,
      city: note.name,
      state: note.state,
      country: note.country,
      longitude: note.lon,
      latitude: note.lat,
    );
    await dependency<Provider>().getWeather(city);
    await dependency<AppDb>().insertLocalCity(entity);
    log(city.toString());
    await GetCitiesList();
  }

  Future<void> DeleteCity(int id) async {
    await dependency<AppDb>().deleteLocalCity(id);
    await GetCitiesList();
  }
}
