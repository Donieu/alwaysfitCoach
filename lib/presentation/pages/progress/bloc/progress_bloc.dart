import 'dart:async';

import 'package:alwaysfit/data/datasources/local/mocks/training_progress.dart';
import 'package:bloc/bloc.dart';

part 'progress_event.dart';
part 'progress_state.dart';

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  ProgressBloc() : super(ProgressInitial()) {
    on<LoadProgressEvent>(_onLoad);
  }

  Future<void> _onLoad(
      LoadProgressEvent event, Emitter<ProgressState> emit) async {
    emit(ProgressLoading());

    await Future.delayed(const Duration(seconds: 1));
    emit(ProgressLoaded(TrainingProgressModel.getMockList()));
  }
}
