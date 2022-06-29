import '../../Services/Provider/CitiesJSON.dart';

abstract class CityAddState {}

class CityAddLoadedState extends CityAddState {
  var cities = [];
  CityAddLoadedState({required this.cities});
}

class SearchChangedState extends CityAddState {
  List<CitiesJSON> cities;
  SearchChangedState({required this.cities});
}

class CityAddUninitialisedState extends CityAddState {}
