import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Services/Provider/provider.dart';
import '../../Services/injections_container.dart';
import '../../Services/repository.dart';
import '2.CityAddEvent.dart';
import '3.CityAddState.dart';

class CityAddBloc extends Bloc<CityAddEvent, CityAddState> {
  final CitiesRepository _citiesRepository = dependency<CitiesRepository>();
  final Provider _provider = dependency<Provider>();
  CityAddBloc() : super(CityAddUninitialisedState()) {
    on<AddNewCityEvent>((event, emit) async {
      await _provider.getWeather(event.city!);
      _citiesRepository.citiesDB.add(await _provider.getWeather(event.city!));
      emit(
        CityAddLoadedState(
          cities: _citiesRepository.citiesDB,
        ),
      );
    });
    on<SearchChangedEvent>((event, emit) {
      emit(SearchChangedState(cities: event.cities));
    });
    on<AddInitEvent>((event, emit) {
      emit(
        CityAddLoadedState(
          cities: _citiesRepository.citiesDB,
        ),
      );
    });
  }
}
