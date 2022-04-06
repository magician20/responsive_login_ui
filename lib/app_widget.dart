import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_login_ui/application/auth/auth_bloc.dart';
import 'package:responsive_login_ui/injection.dart';
import 'package:responsive_login_ui/presentaion/routes/router.gr.dart';

import 'application/theme/theme_bloc.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // make sure you don't initiate your router inside of the build function.
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(create: (_) => getIt<ThemeBloc>()),
      ],
      //ThemeBloc at the Root LVL
      child: BlocBuilder<ThemeBloc, ThemeState>(
        buildWhen: (previousState, state) {
          if (previousState == state) return false;
          return true;
        },
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Login Screen',
            //adding theme state
            debugShowCheckedModeBanner: false,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
