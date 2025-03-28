import 'package:alwaysfit/presentation/pages/daily_trains/daily_trains.dart';
import 'package:alwaysfit/presentation/pages/nutritional_plan/nutritional_plan.dart';
import 'package:alwaysfit/presentation/pages/progress/progress_page.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/routes/routes.dart';
import '../pages/dashboard/dashboard.dart';
import '../pages/login/login_screen.dart';
import '../pages/splash/splash_screen.dart';

final Map<String, Widget Function(BuildContext)> appRoutes =
    <String, Widget Function(BuildContext)>{
  NamedRoutes.splashScreen.route: (BuildContext context) =>
      const SplashScreen(),
  NamedRoutes.loginScreen.route: (BuildContext context) => const LoginScreen(),
  NamedRoutes.dashboard.route: (BuildContext context) => const DashBoard(),
  NamedRoutes.dailytrains.route: (BuildContext context) => const DailyTrains(),
  NamedRoutes.progress.route: (BuildContext context) =>
      const TrainingProgressPage(),
  NamedRoutes.nutritionalPlain.route: (BuildContext context) =>
      const NutritionalPlan(),
};
