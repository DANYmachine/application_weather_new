import 'package:flutter/cupertino.dart';

abstract class CityEvent {}

class CityUpdateEvent extends CityEvent {}

class CityWithoutUpdateEvent extends CityEvent {}

class CityInitEvent extends CityEvent {}
