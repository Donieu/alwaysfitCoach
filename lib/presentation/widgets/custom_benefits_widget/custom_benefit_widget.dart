import 'package:alwaysfit/domain/entities/theme/app_colors.dart';
import 'package:alwaysfit/domain/entities/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class CustomBenefitWidget extends StatelessWidget {
  final String imagePath;
  final String benefitText;

  const CustomBenefitWidget({
    super.key,
    required this.imagePath,
    required this.benefitText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: ThemeConstants.min),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width - 20,
        child: Card(
          color: AppColors.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      imagePath,
                      height: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  benefitText,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
