import '../../Services/DB/model.dart';

abstract class CityState {}

class CityLoadedState extends CityState {
  List<City> cities = [];
  CityLoadedState({required this.cities});
}

class CityLoadingState extends CityState {}

class CityUninitialisedState extends CityState {}

class CityErrorState extends CityState {}
