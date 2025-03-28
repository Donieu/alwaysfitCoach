import 'package:alwaysfit/domain/entities/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressBarDaysWidget extends StatelessWidget {
  final int completed;
  final int remaining;

  const ProgressBarDaysWidget({
    super.key,
    required this.completed,
    required this.remaining,
  });

  @override
  Widget build(BuildContext context) {
    final total = completed + remaining;
    final progress = completed / total;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 30,
            backgroundColor: AppColors.error,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.successBar),
          ),
        ),
        Positioned.fill(
          child: Row(
            children: [
              Expanded(
                flex: completed,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '$completed dias',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                  ),
                ),
              ),
              Expanded(
                flex: remaining,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '$remaining dias',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 14,
                        ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
