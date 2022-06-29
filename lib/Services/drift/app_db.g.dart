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
  final String state;
  final String country;
  final double lon;
  final double lat;
  CitiesEntityData(
      {required this.id,
      required this.idCity,
      required this.city,
      required this.state,
      required this.country,
      required this.lon,
      required this.lat});
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
      state: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}state'])!,
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
    map['state'] = Variable<String>(state);
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
      state: Value(state),
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
      state: serializer.fromJson<String>(json['state']),
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
      'state': serializer.toJson<String>(state),
      'country': serializer.toJson<String>(country),
      'lon': serializer.toJson<double>(lon),
      'lat': serializer.toJson<double>(lat),
    };
  }

  CitiesEntityData copyWith(
          {int? id,
          String? idCity,
          String? city,
          String? state,
          String? country,
          double? lon,
          double? lat}) =>
      CitiesEntityData(
        id: id ?? this.id,
        idCity: idCity ?? this.idCity,
        city: city ?? this.city,
        state: state ?? this.state,
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
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('lon: $lon, ')
          ..write('lat: $lat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idCity, city, state, country, lon, lat);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CitiesEntityData &&
          other.id == this.id &&
          other.idCity == this.idCity &&
          other.city == this.city &&
          other.state == this.state &&
          other.country == this.country &&
          other.lon == this.lon &&
          other.lat == this.lat);
}

class CitiesEntityCompanion extends UpdateCompanion<CitiesEntityData> {
  final Value<int> id;
  final Value<String> idCity;
  final Value<String> city;
  final Value<String> state;
  final Value<String> country;
  final Value<double> lon;
  final Value<double> lat;
  const CitiesEntityCompanion({
    this.id = const Value.absent(),
    this.idCity = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.lon = const Value.absent(),
    this.lat = const Value.absent(),
  });
  CitiesEntityCompanion.insert({
    this.id = const Value.absent(),
    required String idCity,
    required String city,
    required String state,
    required String country,
    required double lon,
    required double lat,
  })  : idCity = Value(idCity),
        city = Value(city),
        state = Value(state),
        country = Value(country),
        lon = Value(lon),
        lat = Value(lat);
  static Insertable<CitiesEntityData> custom({
    Expression<int>? id,
    Expression<String>? idCity,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? country,
    Expression<double>? lon,
    Expression<double>? lat,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idCity != null) 'id_city': idCity,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (lon != null) 'lon': lon,
      if (lat != null) 'lat': lat,
    });
  }

  CitiesEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? idCity,
      Value<String>? city,
      Value<String>? state,
      Value<String>? country,
      Value<double>? lon,
      Value<double>? lat}) {
    return CitiesEntityCompanion(
      id: id ?? this.id,
      idCity: idCity ?? this.idCity,
      city: city ?? this.city,
      state: state ?? this.state,
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
    if (state.present) {
      map['state'] = Variable<String>(state.value);
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
          ..write('state: $state, ')
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
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String?> state = GeneratedColumn<String?>(
      'state', aliasedName, false,
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
  List<GeneratedColumn> get $columns =>
      [id, idCity, city, state, country, lon, lat];
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
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    } else if (isInserting) {
      context.missing(_stateMeta);
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
