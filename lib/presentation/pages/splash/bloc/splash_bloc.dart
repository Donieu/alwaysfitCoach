import 'dart:async';

import 'package:bloc/bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashLoad>(_onLoad);
  }

  FutureOr<void> _onLoad(SplashLoad event, Emitter<SplashState> emit) async {
    emit(SplashLoading());
    await Future.delayed(const Duration(seconds: 2));
    emit(SplashRoute()); 
  }
}
