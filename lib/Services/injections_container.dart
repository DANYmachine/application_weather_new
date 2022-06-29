import 'package:application_weather_new/Services/drift/app_db.dart';
import 'package:application_weather_new/Services/repository.dart';
import 'package:get_it/get_it.dart';
import '../BLoC/CityAddBloc/1.CityAddBloc.dart';
import '../BLoC/CityDeleteBloc/1.CityDeleteBloc.dart';
import '../BLoC/City_BLoC/1.CityBloc.dart';
import 'Provider/provider.dart';

final dependency = GetIt.instance;

void initGetIt() async {
  dependency.registerSingleton<CitiesRepository>(CitiesRepository());

  dependency.registerSingleton<Provider>(Provider());

  dependency.registerSingleton<AppDb>(AppDb());

  dependency.registerFactory<CityBloc>(() => CityBloc());

  dependency.registerFactory<CityAddBloc>(() => CityAddBloc());

  dependency.registerFactory<CityBlocDelete>(() => CityBlocDelete());
}
