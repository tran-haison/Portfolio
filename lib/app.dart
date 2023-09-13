import 'package:flutter/material.dart';
import 'package:portfolio/presentation/res/themes.dart';
import 'package:portfolio/presentation/views/home/home_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: Themes.commonThemeData(context),
      home: const HomeView(),
    );
  }
}
