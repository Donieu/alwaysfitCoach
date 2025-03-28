import 'package:alwaysfit/domain/entities/routes/routes.dart';
import 'package:alwaysfit/presentation/widgets/custom_app_bar.dart/custom_app_bar.dart';
import 'package:alwaysfit/presentation/widgets/custom_benefits_widget/custom_benefit_widget.dart';
import 'package:alwaysfit/presentation/widgets/custom_elevated_header_box/custom_elevated_header_box.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  void _navigate(BuildContext context, String route) {
    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarAlwaysFit(automaticallyImplyLeading: true,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ElevatedHeaderBox(title: 'Dashboard'),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        style: Theme.of(context).textTheme.displayMedium,
                        children: [
                          const TextSpan(text: 'Olá '),
                          TextSpan(
                            text: 'Roberto',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                              text:
                                  ', seja bem vindo ao seu dashboard de treinos.'),
                        ],
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => _navigate(context, NamedRoutes.dailytrains.route),
                child: const CustomBenefitWidget(
                  benefitText: 'Treinos',
                  imagePath: 'assets/images/treino.png',
                ),
              ),
              GestureDetector(
                onTap: () => _navigate(context, NamedRoutes.nutritionalPlain.route),
                child: const CustomBenefitWidget(
                  benefitText: 'Plano nutricional',
                  imagePath: 'assets/images/nutricional.png',
                ),
              ),
              GestureDetector(
                onTap: () => _navigate(context, NamedRoutes.progress.route),
                child: const CustomBenefitWidget(
                  benefitText: 'Progresso',
                  imagePath: 'assets/images/progresso.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


 

}
