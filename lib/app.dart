import 'package:flutter/material.dart';

import 'res/themes.dart';
import 'router/routers.dart';
import 'utils/constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Constants.text.appTitle,
      debugShowCheckedModeBanner: false,
      theme: Themes.commonThemeData(context),
      routerConfig: appRouter,
    );
  }
}
