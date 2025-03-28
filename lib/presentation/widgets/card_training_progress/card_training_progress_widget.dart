import 'package:alwaysfit/data/datasources/local/mocks/training_progress.dart';
import 'package:alwaysfit/presentation/widgets/card_daily_train/progress_bar/progress_bar_widget.dart';
import 'package:flutter/material.dart';

class CardTrainingProgressWidget extends StatelessWidget {
  final TrainingProgressModel training;

  const CardTrainingProgressWidget({
    super.key,
    required this.training,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        margin: const EdgeInsets.only(bottom: 16),
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  training.name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  training.description,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                Text(
                  'Iniciado: ${_formatDate(training.startDate)}',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  'Meta',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                ProgressBarDaysWidget(
                  completed: training.daysCompleted,
                  remaining: training.daysRemaining,
                ),
              ],
            )));
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }
}
