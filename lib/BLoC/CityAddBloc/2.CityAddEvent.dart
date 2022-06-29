import '../../Services/DB/model.dart';
import '../../Services/Provider/CitiesJSON.dart';

abstract class CityAddEvent {}

class AddNewCityEvent extends CityAddEvent {
  CitiesJSON? city;
  AddNewCityEvent({required this.city});
}

class SearchChangedEvent extends CityAddEvent {
  List<CitiesJSON> cities;
  SearchChangedEvent({required this.cities});
}

class AddInitEvent extends CityAddEvent {}
