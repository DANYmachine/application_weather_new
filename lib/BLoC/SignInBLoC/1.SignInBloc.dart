import 'package:flutter_bloc/flutter_bloc.dart';

import '2.SignInEvent.dart';
import '3.SignInState.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInUninitialisedState()) {
    on<LogInEvent>((event, emit) async {});
    on<LogOutEvent>((event, emit) async {});
  }
}
