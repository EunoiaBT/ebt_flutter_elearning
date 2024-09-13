part of 'route.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return _pageBuilder(
        (context) => BlocProvider(
          create: (_) => sl<WelcomeCubit>(),
          child: FutureBuilder<bool?>(
            future: sl<CacheStore>().checkIfUserIsFirstTimer(),
            builder: (context, snapshot) {
              if ((snapshot.hasData && snapshot.data == false)) {
                // If user is not first timer, go to home/authentication page
                FutureBuilder<String?>(
                  future: sl<UserStore>().getToken(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData && snapshot.data != null) {
                      // If user token is available, dispatch the get current and go to home
                      return Container();
                    }
                    // Else go to authentication page
                    return Container();
                  },
                );
              }
              return WelcomePage();
            },
          ),
        ),
        settings: settings,
      );

    default:
      return _pageBuilder(
        (_) => const PageUnderConstruction(),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
  Widget Function(BuildContext) page, {
  required RouteSettings settings,
}) {
  return PageRouteBuilder(
    settings: settings,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
    pageBuilder: (context, _, __) => page(context),
  );
}
