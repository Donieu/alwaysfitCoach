import 'package:alwaysfit/presentation/pages/progress/bloc/progress_bloc.dart';
import 'package:alwaysfit/presentation/widgets/card_training_progress/card_training_progress_widget.dart';
import 'package:alwaysfit/presentation/widgets/custom_app_bar.dart/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



 class TrainingProgressPage extends StatelessWidget {
  const TrainingProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProgressBloc()..add(LoadProgressEvent()),
      child: Scaffold(
        appBar: const CustomAppBarAlwaysFit(automaticallyImplyLeading: true),
        body: BlocBuilder<ProgressBloc, ProgressState>(
          builder: (context, state) {
            if (state is ProgressLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ProgressLoaded) {
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: state.list.length,
                itemBuilder: (context, index) {
                  return CardTrainingProgressWidget(training: state.list[index]);
                },
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

}