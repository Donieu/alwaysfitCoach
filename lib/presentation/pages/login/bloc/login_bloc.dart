import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<SignEvent>(_sign);
  }

  FutureOr<void> _sign(SignEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    await Future.delayed(const Duration(seconds: 2));

    if (event.email == "roberto@always.com" && event.password == "123456") {
      emit(LoginSuccess());
    } else {
      emit(LoginError("E-mail ou senha inválidos"));
    }
  }
}
