import 'dart:async';

import 'package:alwaysfit/data/datasources/local/mocks/meals_model.dart';
import 'package:bloc/bloc.dart';

part 'meals_event.dart';
part 'meals_state.dart';

class MealsBloc extends Bloc<MealsEvent, MealsState> {
  MealsBloc() : super(MealsInitial()) {
    on<LoadMealsEvent>(_onLoad);
  }

  Future<void> _onLoad(LoadMealsEvent event, Emitter<MealsState> emit) async {
    emit(MealsLoading());

    await Future.delayed(const Duration(seconds: 1));

    emit(MealsLoaded(MealModel.getMockList()));
  }
}
