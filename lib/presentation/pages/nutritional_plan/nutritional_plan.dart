import 'package:alwaysfit/presentation/pages/nutritional_plan/bloc/meals_bloc.dart';
import 'package:alwaysfit/presentation/widgets/card_meals_daily/card_meal_daily.dart';
import 'package:alwaysfit/presentation/widgets/custom_app_bar.dart/custom_app_bar.dart';
import 'package:alwaysfit/presentation/widgets/custom_elevated_header_box/custom_elevated_header_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NutritionalPlan extends StatelessWidget {
  const NutritionalPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MealsBloc()..add(LoadMealsEvent()),
      child: Scaffold(
        appBar: const CustomAppBarAlwaysFit(automaticallyImplyLeading: true),
        body: SafeArea(
          child: Column(
            children: [
              const ElevatedHeaderBox(title: 'Plano nutricional'),
              const SizedBox(height: 16),
              Text(
                'Refeições do dia',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 14),
              Expanded(
                child: BlocBuilder<MealsBloc, MealsState>(
                  builder: (context, state) {
                    if (state is MealsLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (state is MealsLoaded) {
                      return CardDailyMealWidget(mealList: state.meals);
                    }

                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
