part of 'meals_bloc.dart';

abstract class MealsState {}

class MealsInitial extends MealsState {}

class MealsLoading extends MealsState {}

class MealsLoaded extends MealsState {
  final List<MealModel> meals;

  MealsLoaded(this.meals);
}
