import 'package:application_weather_new/Services/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Services/Provider/provider.dart';
import '../../Services/injections_container.dart';
import '2.CityEvent.dart';
import '3.CityState.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final CitiesRepository _citiesRep = dependency.get<CitiesRepository>();
  final Provider _provider = dependency.get<Provider>();

  CityBloc() : super(CityUninitialisedState()) {
    on<CityInitEvent>((event, emit) async {
      emit(CityLoadingState());
      try {
        await dependency<Provider>().GetFullInfo();
        emit(CityLoadedState(
          cities: await dependency<CitiesRepository>().GetCitiesList(),
        ));
      } catch (_) {
        emit(CityErrorState());
      }
    });
    on<CityUpdateEvent>((event, emit) async {
      emit(CityLoadingState());
      try {
        await _provider.GetFullInfo();
        emit(
          CityLoadedState(
            cities: _citiesRep.citiesDB,
          ),
        );
      } catch (_) {
        emit(CityErrorState());
      }
    }); /*
    on<CityWithoutUpdateEvent>((event, emit) async {
      var citiesList = await _citiesRep.GetCitiesList();
      emit(CityLoadingState());

      try {
        emit(CityLoadedState(
          cities: citiesList,
        ));
      } catch (_) {
        emit(CityErrorState());
      }
    });*/
  }
}
