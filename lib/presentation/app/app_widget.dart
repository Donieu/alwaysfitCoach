import 'package:alwaysfit/domain/entities/provider/app_providers.dart';
import 'package:alwaysfit/l10n/language.dart';
import 'package:alwaysfit/presentation/app/app_routes.dart';
import 'package:alwaysfit/presentation/widgets/remove_glow/remove_glow_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../domain/entities/routes/routes.dart';
import '../../domain/entities/theme/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
        textDirection: TextDirection.ltr,
        alignment: Alignment.topLeft,
        children: [
          MultiBlocProvider(
            providers: getAppProviders(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              builder: (_, child) {
                return ScrollConfiguration(
                  behavior: const RemoveGlowEffect(),
                  child: child ?? const SizedBox.shrink(),
                );
              },
              supportedLocales: [
                Language.portuguese.locale,
                Language.english.locale,
              ],
              locale: Language.portuguese.locale,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              themeMode: ThemeMode.system,
              theme: AppThemes().defaultTheme,
              darkTheme: AppThemes().darkTheme,
              initialRoute: NamedRoutes.splashScreen.route,
              routes: appRoutes,
            ),
          ),
        ],
      
    );
  }
}

