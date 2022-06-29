//flutter pub run build_runner build --delete-conflicting-outputs

import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';

import '../DB/model.dart';
import '../entity.dart';

part 'app_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'databaseCities.sqlite'));

    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [CitiesEntity])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<CitiesEntityData>> getLocalCities() async {
    return await select(citiesEntity).get();
  }

  Future<City> toCity(CitiesEntityCompanion companion) async {
    City city = City();
    return city;
  }

  Future<CitiesEntityCompanion> toCompanion(City city) async {
    CitiesEntityCompanion companion = CitiesEntityCompanion();
    return companion;
  }

  Future<List<City>> getCitiesListFromDB() async {
    List<City> list = [];
    List<CitiesEntityData> data = await select(citiesEntity).get();
    for (var note in data) {
      list.add(City(
        id: note.id,
        city: note.city,
        idCity: note.idCity,
        curTemp: note.curTemp,
        feelsLike: note.feelsLike,
        description: note.description,
        currently: note.currently,
        humidity: note.humidity,
        windVelocity: int.parse(note.windVelocity.toString()),
        iconCode: note.iconCode,
        dt: note.dt,
        windDirection: note.windDirection,
        population: note.population,
        pressure: note.pressure,
        clouds: note.clouds,
        country: note.country,
        sunrise: note.sunrise,
        sunset: note.sunset,
        dayLength: note.dayLength,
        longitude: note.lon,
        latitude: note.lat,
        iconUri: note.iconUri,
        state: note.state,
      ));
    }
    return list;
  }

  Future<CitiesEntityData> getLocalSingleCity(int id) async {
    return await (select(citiesEntity)
          ..where(
            (tbl) => tbl.id.equals(id),
          ))
        .getSingle();
  }

  Future<bool> updateLocalCity(CitiesEntityCompanion entity) async {
    return await update(citiesEntity).replace(entity);
  }

  Future<int> insertLocalCity(CitiesEntityCompanion entity) async {
    return await into(citiesEntity).insert(entity);
  }

  Future<int> deleteLocalCity(int id) async {
    return await (delete(citiesEntity)..where((tbl) => tbl.id.equals(id))).go();
  }
}
