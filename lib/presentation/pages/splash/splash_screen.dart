import 'package:alwaysfit/domain/entities/routes/routes.dart';
import 'package:alwaysfit/presentation/pages/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(SplashLoad());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashRoute) {
          Navigator.of(context).pushReplacementNamed(NamedRoutes.loginScreen.route);
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF282733),
        body: SafeArea(
          child: Center(
            child: SvgPicture.asset(
              'assets/svg/logo_always.svg',
            ),
          ),
        ),
      ),
    );
  }
}
