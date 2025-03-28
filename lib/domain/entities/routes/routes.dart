enum NamedRoutes {
  splashScreen('/'),
  loginScreen('/login-screen'),
  dashboard('/dashboard'),
  bottomappbar('/bottom-app-bar'),
  progress('/progress'),

  nutritionalPlain('/nutritional-plain'),
  dailytrains('/daily-trains');

  final String route;

  const NamedRoutes(this.route);
}
