import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData buildAppTheme() {
    final ThemeData theme = ThemeData(
      typography: Typography(),
      iconTheme: IconThemeData(
        size: 16,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.black87),
        headline2: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
    return theme;
  }
}
