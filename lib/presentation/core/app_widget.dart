import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import '../../injection.dart';
import '../routes/router.gr.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = getIt<AppRouter>();
  final BotToastNavigatorObserver botToastNavigatorObserver =
      BotToastNavigatorObserver();
  final botToastBuilder = BotToastInit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      builder: botToastBuilder,
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [botToastNavigatorObserver],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Sponty',
    );
  }
}
