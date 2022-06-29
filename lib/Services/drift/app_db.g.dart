// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class CitiesEntityData extends DataClass
    implements Insertable<CitiesEntityData> {
  final int id;
  final String idCity;
  final String city;
  final double curTemp;
  final double feelsLike;
  final String description;
  final String currently;
  final int humidity;
  final double windVelocity;
  final String iconCode;
  final int dt;
  final int windDirection;
  final int population;
  final int pressure;
  final int clouds;
  final String state;
  final String sunrise;
  final String sunset;
  final String dayLength;
  final String iconUri;
  final String country;
  final double lon;
  final double lat;
  CitiesEntityData({
    required this.id,
    required this.idCity,
    required this.city,
    required this.curTemp,
    required this.feelsLike,
    required this.description,
    required this.currently,
    required this.humidity,
    required this.windVelocity,
    required this.iconCode,
    required this.dt,
    required this.windDirection,
    required this.population,
    required this.pressure,
    required this.clouds,
    required this.state,
    required this.sunrise,
    required this.sunset,
    required this.dayLength,
    required this.iconUri,
    required this.country,
    required this.lon,
    required this.lat,
  });
  factory CitiesEntityData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CitiesEntityData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      idCity: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_city'])!,
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city'])!,
      curTemp: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}curtemp'])!,
      feelsLike: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}feelsLike'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      currently: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}currently'])!,
      humidity: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}humidity'])!,
      windVelocity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}windVelocity'])!,
      iconCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}iconCode'])!,
      dt: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dt'])!,
      windDirection: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}windDirection'])!,
      population: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}population'])!,
      pressure: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pressure'])!,
      clouds: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}clouds'])!,
      state: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}state'])!,
      sunrise: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sunrise'])!,
      sunset: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sunset'])!,
      dayLength: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dayLength'])!,
      iconUri: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}iconUri'])!,
      country: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}country'])!,
      lon: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lon'])!,
      lat: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lat'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_city'] = Variable<String>(idCity);
    map['city'] = Variable<String>(city);
    map['curtemp'] = Variable<double>(curTemp);
    map['feelsLike'] = Variable<double>(feelsLike);
    map['description'] = Variable<String>(description);
    map['currently'] = Variable<String>(currently);
    map['humidity'] = Variable<int>(humidity);
    map['windVelocity'] = Variable<double>(windVelocity);
    map['iconCode'] = Variable<String>(iconCode);
    map['dt'] = Variable<int>(dt);
    map['windDirection'] = Variable<int>(windDirection);
    map['population'] = Variable<int>(population);
    map['pressure'] = Variable<int>(pressure);
    map['clouds'] = Variable<int>(clouds);
    map['state'] = Variable<String>(state);
    map['sunrise'] = Variable<String>(sunrise);
    map['sunset'] = Variable<String>(sunset);
    map['dayLength'] = Variable<String>(dayLength);
    map['iconUri'] = Variable<String>(iconUri);
    map['country'] = Variable<String>(country);
    map['lon'] = Variable<double>(lon);
    map['lat'] = Variable<double>(lat);
    return map;
  }

  CitiesEntityCompanion toCompanion(bool nullToAbsent) {
    return CitiesEntityCompanion(
      id: Value(id),
      idCity: Value(idCity),
      city: Value(city),
      curTemp: Value(curTemp),
      feelsLike: Value(feelsLike),
      description: Value(description),
      currently: Value(currently),
      humidity: Value(humidity),
      windVelocity: Value(windVelocity),
      iconCode: Value(iconCode),
      dt: Value(dt),
      windDirection: Value(windDirection),
      population: Value(population),
      pressure: Value(pressure),
      clouds: Value(clouds),
      state: Value(state),
      sunrise: Value(sunrise),
      sunset: Value(sunset),
      dayLength: Value(dayLength),
      iconUri: Value(iconUri),
      country: Value(country),
      lon: Value(lon),
      lat: Value(lat),
    );
  }

  factory CitiesEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CitiesEntityData(
      id: serializer.fromJson<int>(json['id']),
      idCity: serializer.fromJson<String>(json['idCity']),
      city: serializer.fromJson<String>(json['city']),
      curTemp: serializer.fromJson<double>(json['curTemp']),
      feelsLike: serializer.fromJson<double>(json['feelsLike']),
      description: serializer.fromJson<String>(json['description']),
      currently: serializer.fromJson<String>(json['currently']),
      humidity: serializer.fromJson<int>(json['humidity']),
      windVelocity: serializer.fromJson<double>(json['windVelocity']),
      iconCode: serializer.fromJson<String>(json['iconCode']),
      dt: serializer.fromJson<int>(json['dt']),
      windDirection: serializer.fromJson<int>(json['windDirection']),
      population: serializer.fromJson<int>(json['population']),
      pressure: serializer.fromJson<int>(json['pressure']),
      clouds: serializer.fromJson<int>(json['clouds']),
      state: serializer.fromJson<String>(json['state']),
      sunrise: serializer.fromJson<String>(json['sunrise']),
      sunset: serializer.fromJson<String>(json['sunset']),
      dayLength: serializer.fromJson<String>(json['dayLength']),
      iconUri: serializer.fromJson<String>(json['iconUri']),
      country: serializer.fromJson<String>(json['country']),
      lon: serializer.fromJson<double>(json['lon']),
      lat: serializer.fromJson<double>(json['lat']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idCity': serializer.toJson<String>(idCity),
      'city': serializer.toJson<String>(city),
      'curTemp': serializer.toJson<double>(curTemp),
      'feelsLike': serializer.toJson<double>(feelsLike),
      'description': serializer.toJson<String>(description),
      'currently': serializer.toJson<String>(currently),
      'humidity': serializer.toJson<int>(humidity),
      'windVelocity': serializer.toJson<double>(windVelocity),
      'iconCode': serializer.toJson<String>(iconCode),
      'dt': serializer.toJson<int>(dt),
      'windDirection': serializer.toJson<int>(windDirection),
      'population': serializer.toJson<int>(population),
      'pressure': serializer.toJson<int>(pressure),
      'clouds': serializer.toJson<int>(clouds),
      'state': serializer.toJson<String>(state),
      'sunrise': serializer.toJson<String>(sunrise),
      'sunset': serializer.toJson<String>(sunset),
      'dayLength': serializer.toJson<String>(dayLength),
      'iconUri': serializer.toJson<String>(iconUri),
      'country': serializer.toJson<String>(country),
      'lon': serializer.toJson<double>(lon),
      'lat': serializer.toJson<double>(lat),
    };
  }

  CitiesEntityData copyWith(
          {int? id,
          String? idCity,
          String? city,
          double? curTemp,
          double? feelsLike,
          String? description,
          String? currently,
          int? humidity,
          double? windVelocity,
          String? iconCode,
          int? dt,
          int? windDirection,
          int? population,
          int? pressure,
          int? clouds,
          String? state,
          String? sunrise,
          String? sunset,
          String? dayLength,
          String? iconUri,
          String? country,
          double? lon,
          double? lat}) =>
      CitiesEntityData(
        id: id ?? this.id,
        idCity: idCity ?? this.idCity,
        city: city ?? this.city,
        curTemp: curTemp ?? this.curTemp,
        feelsLike: feelsLike ?? this.feelsLike,
        description: description ?? this.description,
        currently: currently ?? this.currently,
        humidity: humidity ?? this.humidity,
        windVelocity: windVelocity ?? this.windVelocity,
        iconCode: iconCode ?? this.iconCode,
        dt: dt ?? this.dt,
        windDirection: windDirection ?? this.windDirection,
        population: population ?? this.population,
        pressure: pressure ?? this.pressure,
        clouds: clouds ?? this.clouds,
        state: state ?? this.state,
        sunrise: sunrise ?? this.sunrise,
        sunset: sunset ?? this.sunset,
        dayLength: dayLength ?? this.dayLength,
        iconUri: iconUri ?? this.iconUri,
        country: country ?? this.country,
        lon: lon ?? this.lon,
        lat: lat ?? this.lat,
      );
  @override
  String toString() {
    return (StringBuffer('CitiesEntityData(')
          ..write('id: $id, ')
          ..write('idCity: $idCity, ')
          ..write('city: $city, ')
          ..write('curTemp: $curTemp, ')
          ..write('feelsLike: $feelsLike, ')
          ..write('description: $description, ')
          ..write('currently: $currently, ')
          ..write('humidity: $humidity, ')
          ..write('windVelocity: $windVelocity, ')
          ..write('iconCode: $iconCode, ')
          ..write('dt: $dt, ')
          ..write('windDirection: $windDirection, ')
          ..write('population: $population, ')
          ..write('pressure: $pressure, ')
          ..write('clouds: $clouds, ')
          ..write('state: $state, ')
          ..write('sunrise: $sunrise, ')
          ..write('sunset: $sunset, ')
          ..write('dayLength: $dayLength, ')
          ..write('iconUri: $iconUri, ')
          ..write('country: $country, ')
          ..write('lon: $lon, ')
          ..write('lat: $lat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        idCity,
        city,
        curTemp,
        feelsLike,
        description,
        currently,
        humidity,
        windVelocity,
        iconCode,
        dt,
        windDirection,
        population,
        pressure,
        clouds,
        state,
        sunrise,
        sunset,
        dayLength,
        iconUri,
        country,
        lon,
        lat,
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CitiesEntityData &&
          other.id == this.id &&
          other.idCity == this.idCity &&
          other.city == this.city &&
          other.curTemp == this.curTemp &&
          other.feelsLike == this.feelsLike &&
          other.description == this.description &&
          other.currently == this.currently &&
          other.humidity == this.humidity &&
          other.windVelocity == this.windVelocity &&
          other.iconCode == this.iconCode &&
          other.dt == this.dt &&
          other.windDirection == this.windDirection &&
          other.population == this.population &&
          other.pressure == this.pressure &&
          other.clouds == this.clouds &&
          other.state == this.state &&
          other.sunrise == this.sunrise &&
          other.sunset == this.sunset &&
          other.dayLength == this.dayLength &&
          other.iconUri == this.iconUri &&
          other.country == this.country &&
          other.lon == this.lon &&
          other.lat == this.lat);
}

class CitiesEntityCompanion extends UpdateCompanion<CitiesEntityData> {
  final Value<int> id;
  final Value<String> idCity;
  final Value<String> city;
  final Value<double> curTemp;
  final Value<double> feelsLike;
  final Value<String> description;
  final Value<String> currently;
  final Value<int> humidity;
  final Value<double> windVelocity;
  final Value<String> iconCode;
  final Value<int> dt;
  final Value<int> windDirection;
  final Value<int> population;
  final Value<int> pressure;
  final Value<int> clouds;
  final Value<String> state;
  final Value<String> sunrise;
  final Value<String> sunset;
  final Value<String> dayLength;
  final Value<String> iconUri;
  final Value<String> country;
  final Value<double> lon;
  final Value<double> lat;
  const CitiesEntityCompanion({
    this.id = const Value.absent(),
    this.idCity = const Value.absent(),
    this.city = const Value.absent(),
    this.curTemp = const Value.absent(),
    this.feelsLike = const Value.absent(),
    this.description = const Value.absent(),
    this.currently = const Value.absent(),
    this.humidity = const Value.absent(),
    this.windVelocity = const Value.absent(),
    this.iconCode = const Value.absent(),
    this.dt = const Value.absent(),
    this.windDirection = const Value.absent(),
    this.population = const Value.absent(),
    this.pressure = const Value.absent(),
    this.clouds = const Value.absent(),
    this.state = const Value.absent(),
    this.sunrise = const Value.absent(),
    this.sunset = const Value.absent(),
    this.dayLength = const Value.absent(),
    this.iconUri = const Value.absent(),
    this.country = const Value.absent(),
    this.lon = const Value.absent(),
    this.lat = const Value.absent(),
  });
  CitiesEntityCompanion.insert({
    this.id = const Value.absent(),
    required String idCity,
    required String city,
    required double curTemp,
    required double feelsLike,
    required String description,
    required String currently,
    required int humidity,
    required double windVelocity,
    required String iconCode,
    required int dt,
    required int windDirection,
    required int population,
    required int pressure,
    required int clouds,
    required String state,
    required String sunrise,
    required String sunset,
    required String dayLength,
    required String iconUri,
    required String country,
    required double lon,
    required double lat,
  })  : idCity = Value(idCity),
        city = Value(city),
        curTemp = Value(curTemp),
        feelsLike = Value(feelsLike),
        description = Value(description),
        currently = Value(currently),
        humidity = Value(humidity),
        windVelocity = Value(windVelocity),
        iconCode = Value(iconCode),
        dt = Value(dt),
        windDirection = Value(windDirection),
        population = Value(population),
        pressure = Value(pressure),
        clouds = Value(clouds),
        state = Value(state),
        sunrise = Value(sunrise),
        sunset = Value(sunset),
        dayLength = Value(dayLength),
        iconUri = Value(iconUri),
        country = Value(country),
        lon = Value(lon),
        lat = Value(lat);
  static Insertable<CitiesEntityData> custom({
    Expression<int>? id,
    Expression<String>? idCity,
    Expression<String>? city,
    Expression<double>? curTemp,
    Expression<double>? feelsLike,
    Expression<String>? description,
    Expression<String>? currently,
    Expression<int>? humidity,
    Expression<double>? windVelocity,
    Expression<String>? iconCode,
    Expression<int>? dt,
    Expression<int>? windDirection,
    Expression<int>? population,
    Expression<int>? pressure,
    Expression<int>? clouds,
    Expression<String>? state,
    Expression<String>? sunrise,
    Expression<String>? sunset,
    Expression<String>? dayLength,
    Expression<String>? iconUri,
    Expression<String>? country,
    Expression<double>? lon,
    Expression<double>? lat,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idCity != null) 'id_city': idCity,
      if (city != null) 'city': city,
      if (curTemp != null) 'curtemp': curTemp,
      if (feelsLike != null) 'feelsLike': feelsLike,
      if (description != null) 'description': description,
      if (currently != null) 'currently': currently,
      if (humidity != null) 'humidity': humidity,
      if (windVelocity != null) 'windVelocity': windVelocity,
      if (iconCode != null) 'iconCode': iconCode,
      if (dt != null) 'dt': dt,
      if (windDirection != null) 'windDirection': windDirection,
      if (population != null) 'population': population,
      if (pressure != null) 'pressure': pressure,
      if (clouds != null) 'clouds': clouds,
      if (state != null) 'state': state,
      if (sunrise != null) 'sunrise': sunrise,
      if (sunset != null) 'sunset': sunset,
      if (dayLength != null) 'dayLength': dayLength,
      if (iconUri != null) 'iconUri': iconUri,
      if (country != null) 'country': country,
      if (lon != null) 'lon': lon,
      if (lat != null) 'lat': lat,
    });
  }

  CitiesEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? idCity,
      Value<String>? city,
      Value<double>? curTemp,
      Value<double>? feelsLike,
      Value<String>? description,
      Value<String>? currently,
      Value<int>? humidity,
      Value<double>? windVelocity,
      Value<String>? iconCode,
      Value<int>? dt,
      Value<int>? windDirection,
      Value<int>? population,
      Value<int>? pressure,
      Value<int>? clouds,
      Value<String>? state,
      Value<String>? sunrise,
      Value<String>? sunset,
      Value<String>? dayLength,
      Value<String>? iconUri,
      Value<String>? country,
      Value<double>? lon,
      Value<double>? lat}) {
    return CitiesEntityCompanion(
      id: id ?? this.id,
      idCity: idCity ?? this.idCity,
      city: city ?? this.city,
      curTemp: curTemp ?? this.curTemp,
      feelsLike: feelsLike ?? this.feelsLike,
      description: description ?? this.description,
      currently: currently ?? this.currently,
      humidity: humidity ?? this.humidity,
      windVelocity: windVelocity ?? this.windVelocity,
      iconCode: iconCode ?? this.iconCode,
      dt: dt ?? this.dt,
      windDirection: windDirection ?? this.windDirection,
      population: population ?? this.population,
      pressure: pressure ?? this.pressure,
      clouds: clouds ?? this.clouds,
      state: state ?? this.state,
      sunrise: sunrise ?? this.sunrise,
      sunset: sunset ?? this.sunset,
      dayLength: dayLength ?? this.dayLength,
      iconUri: iconUri ?? this.iconUri,
      country: country ?? this.country,
      lon: lon ?? this.lon,
      lat: lat ?? this.lat,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idCity.present) {
      map['id_city'] = Variable<String>(idCity.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (curTemp.present) {
      map['curtemp'] = Variable<double>(curTemp.value);
    }
    if (feelsLike.present) {
      map['feelsLike'] = Variable<double>(feelsLike.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (currently.present) {
      map['currently'] = Variable<String>(currently.value);
    }
    if (humidity.present) {
      map['humidity'] = Variable<int>(humidity.value);
    }
    if (windVelocity.present) {
      map['windVelocity'] = Variable<double>(windVelocity.value);
    }
    if (iconCode.present) {
      map['iconCode'] = Variable<String>(iconCode.value);
    }
    if (dt.present) {
      map['dt'] = Variable<int>(dt.value);
    }
    if (windDirection.present) {
      map['windDirection'] = Variable<int>(windDirection.value);
    }
    if (population.present) {
      map['population'] = Variable<int>(population.value);
    }
    if (pressure.present) {
      map['pressure'] = Variable<int>(pressure.value);
    }
    if (clouds.present) {
      map['clouds'] = Variable<int>(clouds.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (sunrise.present) {
      map['sunrise'] = Variable<String>(sunrise.value);
    }
    if (sunset.present) {
      map['sunset'] = Variable<String>(sunset.value);
    }
    if (dayLength.present) {
      map['dayLength'] = Variable<String>(dayLength.value);
    }
    if (iconUri.present) {
      map['iconUri'] = Variable<String>(iconUri.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (lon.present) {
      map['lon'] = Variable<double>(lon.value);
    }
    if (lat.present) {
      map['lat'] = Variable<double>(lat.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CitiesEntityCompanion(')
          ..write('id: $id, ')
          ..write('idCity: $idCity, ')
          ..write('city: $city, ')
          ..write('curTemp: $curTemp, ')
          ..write('feelsLike: $feelsLike, ')
          ..write('description: $description, ')
          ..write('currently: $currently, ')
          ..write('humidity: $humidity, ')
          ..write('windVelocity: $windVelocity, ')
          ..write('iconCode: $iconCode, ')
          ..write('dt: $dt, ')
          ..write('windDirection: $windDirection, ')
          ..write('population: $population, ')
          ..write('pressure: $pressure, ')
          ..write('clouds: $clouds, ')
          ..write('state: $state, ')
          ..write('sunrise: $sunrise, ')
          ..write('sunset: $sunset, ')
          ..write('dayLength: $dayLength, ')
          ..write('iconUri: $iconUri, ')
          ..write('country: $country, ')
          ..write('lon: $lon, ')
          ..write('lat: $lat')
          ..write(')'))
        .toString();
  }
}

class $CitiesEntityTable extends CitiesEntity
    with TableInfo<$CitiesEntityTable, CitiesEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CitiesEntityTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idCityMeta = const VerificationMeta('idCity');
  @override
  late final GeneratedColumn<String?> idCity = GeneratedColumn<String?>(
      'id_city', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _curTempMeta = const VerificationMeta('curTemp');
  @override
  late final GeneratedColumn<double?> curTemp = GeneratedColumn<double?>(
      'curtemp', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _feelsLikeMeta = const VerificationMeta('feelsLike');
  @override
  late final GeneratedColumn<double?> feelsLike = GeneratedColumn<double?>(
      'feelsLike', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _currentlyMeta = const VerificationMeta('currently');
  @override
  late final GeneratedColumn<String?> currently = GeneratedColumn<String?>(
      'currently', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _humidityMeta = const VerificationMeta('humidity');
  @override
  late final GeneratedColumn<int?> humidity = GeneratedColumn<int?>(
      'humidity', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _windVelocityMeta =
      const VerificationMeta('windVelocity');
  @override
  late final GeneratedColumn<double?> windVelocity = GeneratedColumn<double?>(
      'windVelocity', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _iconCodeMeta = const VerificationMeta('iconCode');
  @override
  late final GeneratedColumn<String?> iconCode = GeneratedColumn<String?>(
      'iconCode', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dtMeta = const VerificationMeta('dt');
  @override
  late final GeneratedColumn<int?> dt = GeneratedColumn<int?>(
      'dt', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _windDirectionMeta =
      const VerificationMeta('windDirection');
  @override
  late final GeneratedColumn<int?> windDirection = GeneratedColumn<int?>(
      'windDirection', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _populationMeta = const VerificationMeta('population');
  @override
  late final GeneratedColumn<int?> population = GeneratedColumn<int?>(
      'population', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _pressureMeta = const VerificationMeta('pressure');
  @override
  late final GeneratedColumn<int?> pressure = GeneratedColumn<int?>(
      'pressure', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _cloudsMeta = const VerificationMeta('clouds');
  @override
  late final GeneratedColumn<int?> clouds = GeneratedColumn<int?>(
      'clouds', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String?> state = GeneratedColumn<String?>(
      'state', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _sunriseMeta = const VerificationMeta('sunrise');
  @override
  late final GeneratedColumn<String?> sunrise = GeneratedColumn<String?>(
      'sunrise', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _sunsetMeta = const VerificationMeta('sunset');
  @override
  late final GeneratedColumn<String?> sunset = GeneratedColumn<String?>(
      'sunset', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dayLengthMeta = const VerificationMeta('dayLength');
  @override
  late final GeneratedColumn<String?> dayLength = GeneratedColumn<String?>(
      'dayLength', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _iconUriMeta = const VerificationMeta('iconUri');
  @override
  late final GeneratedColumn<String?> iconUri = GeneratedColumn<String?>(
      'iconUri', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _countryMeta = const VerificationMeta('country');
  @override
  late final GeneratedColumn<String?> country = GeneratedColumn<String?>(
      'country', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lonMeta = const VerificationMeta('lon');
  @override
  late final GeneratedColumn<double?> lon = GeneratedColumn<double?>(
      'lon', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _latMeta = const VerificationMeta('lat');
  @override
  late final GeneratedColumn<double?> lat = GeneratedColumn<double?>(
      'lat', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        idCity,
        city,
        curTemp,
        feelsLike,
        description,
        currently,
        humidity,
        windVelocity,
        iconCode,
        dt,
        windDirection,
        population,
        pressure,
        clouds,
        state,
        sunrise,
        sunset,
        dayLength,
        iconUri,
        country,
        lon,
        lat
      ];
  @override
  String get aliasedName => _alias ?? 'cities_entity';
  @override
  String get actualTableName => 'cities_entity';
  @override
  VerificationContext validateIntegrity(Insertable<CitiesEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_city')) {
      context.handle(_idCityMeta,
          idCity.isAcceptableOrUnknown(data['id_city']!, _idCityMeta));
    } else if (isInserting) {
      context.missing(_idCityMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('curtemp')) {
      context.handle(_curTempMeta,
          curTemp.isAcceptableOrUnknown(data['curtemp']!, _curTempMeta));
    } else if (isInserting) {
      context.missing(_curTempMeta);
    }
    if (data.containsKey('feelsLike')) {
      context.handle(_feelsLikeMeta,
          feelsLike.isAcceptableOrUnknown(data['feelsLike']!, _feelsLikeMeta));
    } else if (isInserting) {
      context.missing(_feelsLikeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('currently')) {
      context.handle(_currentlyMeta,
          currently.isAcceptableOrUnknown(data['currently']!, _currentlyMeta));
    } else if (isInserting) {
      context.missing(_currentlyMeta);
    }
    if (data.containsKey('humidity')) {
      context.handle(_humidityMeta,
          humidity.isAcceptableOrUnknown(data['humidity']!, _humidityMeta));
    } else if (isInserting) {
      context.missing(_humidityMeta);
    }
    if (data.containsKey('windVelocity')) {
      context.handle(
          _windVelocityMeta,
          windVelocity.isAcceptableOrUnknown(
              data['windVelocity']!, _windVelocityMeta));
    } else if (isInserting) {
      context.missing(_windVelocityMeta);
    }
    if (data.containsKey('iconCode')) {
      context.handle(_iconCodeMeta,
          iconCode.isAcceptableOrUnknown(data['iconCode']!, _iconCodeMeta));
    } else if (isInserting) {
      context.missing(_iconCodeMeta);
    }
    if (data.containsKey('dt')) {
      context.handle(_dtMeta, dt.isAcceptableOrUnknown(data['dt']!, _dtMeta));
    } else if (isInserting) {
      context.missing(_dtMeta);
    }
    if (data.containsKey('windDirection')) {
      context.handle(
          _windDirectionMeta,
          windDirection.isAcceptableOrUnknown(
              data['windDirection']!, _windDirectionMeta));
    } else if (isInserting) {
      context.missing(_windDirectionMeta);
    }
    if (data.containsKey('population')) {
      context.handle(
          _populationMeta,
          population.isAcceptableOrUnknown(
              data['population']!, _populationMeta));
    } else if (isInserting) {
      context.missing(_populationMeta);
    }
    if (data.containsKey('pressure')) {
      context.handle(_pressureMeta,
          pressure.isAcceptableOrUnknown(data['pressure']!, _pressureMeta));
    } else if (isInserting) {
      context.missing(_pressureMeta);
    }
    if (data.containsKey('clouds')) {
      context.handle(_cloudsMeta,
          clouds.isAcceptableOrUnknown(data['clouds']!, _cloudsMeta));
    } else if (isInserting) {
      context.missing(_cloudsMeta);
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    } else if (isInserting) {
      context.missing(_stateMeta);
    }
    if (data.containsKey('sunrise')) {
      context.handle(_sunriseMeta,
          sunrise.isAcceptableOrUnknown(data['sunrise']!, _sunriseMeta));
    } else if (isInserting) {
      context.missing(_sunriseMeta);
    }
    if (data.containsKey('sunset')) {
      context.handle(_sunsetMeta,
          sunset.isAcceptableOrUnknown(data['sunset']!, _sunsetMeta));
    } else if (isInserting) {
      context.missing(_sunsetMeta);
    }
    if (data.containsKey('dayLength')) {
      context.handle(_dayLengthMeta,
          dayLength.isAcceptableOrUnknown(data['dayLength']!, _dayLengthMeta));
    } else if (isInserting) {
      context.missing(_dayLengthMeta);
    }
    if (data.containsKey('iconUri')) {
      context.handle(_iconUriMeta,
          iconUri.isAcceptableOrUnknown(data['iconUri']!, _iconUriMeta));
    } else if (isInserting) {
      context.missing(_iconUriMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('lon')) {
      context.handle(
          _lonMeta, lon.isAcceptableOrUnknown(data['lon']!, _lonMeta));
    } else if (isInserting) {
      context.missing(_lonMeta);
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat']!, _latMeta));
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CitiesEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CitiesEntityData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CitiesEntityTable createAlias(String alias) {
    return $CitiesEntityTable(attachedDatabase, alias);
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CitiesEntityTable citiesEntity = $CitiesEntityTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [citiesEntity];
}
