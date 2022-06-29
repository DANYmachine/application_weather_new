import 'package:drift/drift.dart';

class CitiesEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get idCity => text()();
  TextColumn get city => text().named('city')();
  /*
  RealColumn get curTemp => real().named('curtemp')();
  RealColumn get feelsLike => real().named('feelsLike')();
  TextColumn get description => text().named('description')();
  TextColumn get currently => text().named('currently')();
  IntColumn get humidity => integer().named('humidity')();
  RealColumn get windVelocity => real().named('windVelocity')();
  TextColumn get iconCode => text().named('iconCode')();
  IntColumn get dt => integer().named('dt')();
  IntColumn get windDirection => integer().named('windDirection')();
  IntColumn get population => integer().named('population')();
  IntColumn get pressure => integer().named('pressure')();
  IntColumn get clouds => integer().named('clouds')();
  */
  TextColumn get state => text().named('state')();
  /*
  TextColumn get sunrise => text().named('sunrise')();
  TextColumn get sunset => text().named('sunset')();
  TextColumn get dayLength => text().named('dayLength')();
  TextColumn get iconUri => text().named('iconUri')();*/
  TextColumn get country => text().named('country')();
  RealColumn get lon => real().named('lon')();
  RealColumn get lat => real().named('lat')();
}
