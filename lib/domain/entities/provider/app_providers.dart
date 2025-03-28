import 'package:alwaysfit/presentation/pages/login/bloc/login_bloc.dart';
import 'package:alwaysfit/presentation/pages/login/login_screen.dart';
import 'package:alwaysfit/presentation/pages/splash/bloc/splash_bloc.dart';
import 'package:alwaysfit/presentation/pages/splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider> getAppProviders() {
  return [
    BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(),
      child: SplashScreen(),
    ),
     BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(),
      child: LoginScreen(),
    ),
  ];
}
