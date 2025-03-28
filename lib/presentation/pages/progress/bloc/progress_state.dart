part of 'progress_bloc.dart';

abstract class ProgressState {}

class ProgressInitial extends ProgressState {}

class ProgressLoading extends ProgressState {}

class ProgressLoaded extends ProgressState {
  final List<TrainingProgressModel> list;

  ProgressLoaded(this.list);
}
