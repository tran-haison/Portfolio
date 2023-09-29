import 'package:flutter/material.dart';

import 'colors.dart';

class Themes {
  static ThemeData commonThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primaryColor: ColorsRes.primary,
      scaffoldBackgroundColor: ColorsRes.backgroundDarkTheme,
      appBarTheme: const AppBarTheme(
        centerTitle: false,
        elevation: 0,
      ),
      iconTheme: const IconThemeData(color: ColorsRes.contentLightTheme),
      colorScheme: const ColorScheme.light(
        primary: ColorsRes.primary,
        secondary: ColorsRes.secondary,
        error: ColorsRes.error,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: ColorsRes.contentLightTheme.withOpacity(0.7),
        unselectedItemColor: ColorsRes.contentLightTheme.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: ColorsRes.primary),
        showUnselectedLabels: true,
      ),
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextStyle get headline1 =>
      Theme.of(this).textTheme.displayLarge ?? const TextStyle();

  TextStyle get headline2 =>
      Theme.of(this).textTheme.displayMedium ?? const TextStyle();

  TextStyle get headline3 =>
      Theme.of(this).textTheme.displaySmall ?? const TextStyle();

  TextStyle get headline4 =>
      Theme.of(this).textTheme.headlineMedium ?? const TextStyle();

  TextStyle get headline5 =>
      Theme.of(this).textTheme.headlineSmall ?? const TextStyle();

  TextStyle get headline6 =>
      Theme.of(this).textTheme.titleLarge ?? const TextStyle();

  TextStyle get button =>
      Theme.of(this).textTheme.labelLarge ?? const TextStyle();

  TextStyle get subtitle1 =>
      Theme.of(this).textTheme.titleMedium ?? const TextStyle();

  TextStyle get subtitle2 =>
      Theme.of(this).textTheme.titleSmall ?? const TextStyle();

  TextStyle get overLine =>
      Theme.of(this).textTheme.labelSmall ?? const TextStyle();

  TextStyle get bodyText1 =>
      Theme.of(this).textTheme.bodyLarge ?? const TextStyle();
}
