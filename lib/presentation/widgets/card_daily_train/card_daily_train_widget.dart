import 'package:alwaysfit/data/datasources/local/mocks/training_model.dart';
import 'package:alwaysfit/domain/entities/theme/app_colors.dart';
import 'package:alwaysfit/presentation/widgets/card_daily_train/progress_bar/progress_bar_widget.dart';
import 'package:alwaysfit/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CardDailyTrainWidget extends StatefulWidget {
  final List<TrainingModel> traningList;

  const CardDailyTrainWidget({
    super.key,
    required this.traningList,
  });

  @override
  State<CardDailyTrainWidget> createState() => _CardDailyTrainWidgetState();
}

class _CardDailyTrainWidgetState extends State<CardDailyTrainWidget> {
  late List<TrainingModel> _trainings;

  @override
  void initState() {
    super.initState();
    _trainings = [...widget.traningList];
  }

  void _markAsCompleted(int index) {
    if (mounted) {
      setState(() {
        _trainings[index] = _trainings[index].copyWith(isCompleted: true);
      });
    }
  }

  void _confirmCompletionDialog(BuildContext context, int index) async {
    final confirmed = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        backgroundColor: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.help_outline,
                size: 42,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 16),
              Text(
                'Marcar como concluído?',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                'Tem certeza que deseja marcar este treino como concluído?',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Cancelar',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Confirmar',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    if (confirmed == true) {
      _markAsCompleted(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: _trainings.length,
      itemBuilder: (context, index) {
        final training = _trainings[index];

        return Card.outlined(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderOnForeground: true,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  training.name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Realizado?',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: Icon(
                        training.isCompleted
                            ? Icons.check_circle
                            : Icons.radio_button_unchecked,
                        color: training.isCompleted
                            ? AppColors.success
                            : Colors.grey[500],
                        size: 20,
                      ),
                      onPressed: training.isCompleted
                          ? null
                          : () => _confirmCompletionDialog(context, index),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Meta',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 4),
                ProgressBarDaysWidget(
                  completed: training.daysCompleted,
                  remaining: training.daysRemaining,
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: PrimaryButton(
                    label: 'Detalhes',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
