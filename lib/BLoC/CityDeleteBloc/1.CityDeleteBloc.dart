import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Services/injections_container.dart';
import '../../Services/repository.dart';
import '2.CityDeleteEvent.dart';
import '3.CityDeleteState.dart';

class CityBlocDelete extends Bloc<CityDeleteEvent, CityDeleteState> {
  final CitiesRepository _citiesRepository = dependency.get<CitiesRepository>();
  CityBlocDelete() : super(DeleteUninitialisedState()) {
    on<DeleteEvent>((event, emit) async {
      _citiesRepository.citiesDB.removeAt(event.idToDelete);
      emit(CityDeleteLoadedState(citiesList: _citiesRepository.citiesDB));
    });
    on<DeleteInitEvent>((event, emit) {
      emit(CityDeleteLoadedState(citiesList: _citiesRepository.citiesDB));
    });
  }
}
