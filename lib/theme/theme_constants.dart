import 'package:flutter/material.dart';

class AppColor {
  static Color primaryColor = Colors.black87;
}

class AppWidgets {
  static get backgroundGradient => LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.blue.shade50,
          Colors.blue.shade200,
          Colors.blue.shade400,
          Colors.blue.shade600,
        ],
      );
}
