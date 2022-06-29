import 'dart:developer';
import 'ThemeEvent.dart';
import 'ThemeState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(LightThemeState()) {
    on<ToDarkThemeEvent>((event, emit) async {
      emit(DarkThemeState());
    });
    on<ToLightThemeEvent>((event, emit) async {
      log(LightThemeState().toString());
      emit(LightThemeState());
    });
  }
}
