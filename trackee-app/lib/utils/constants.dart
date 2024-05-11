import 'package:flutter/material.dart';

// Color scheme for entire app
class AppColors {
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color primaryColor = Color(0xFF003366);
  static const Color secondaryColor = Color(0xFF6699CC);
  static const Color tertiaryColor = Color(0xFFFF6F61);
  static const Color outlineColor = Color(0xFFBDBDBD);
}

// common padding and margins used throughout the app
class AppPadding {
  static const EdgeInsets pagePadding =
      EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0);
}

//Text styles that could be used globally
class TextStyles {
  static TextStyle heading(BuildContext context) => TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onBackground);

  static TextStyle subheading(BuildContext context) => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onBackground);

  static TextStyle body(BuildContext context) => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Theme.of(context).colorScheme.outline);
}


// Icon sizes
class IconSizes {
  static const double smallIcon = 12.0;
  static const double largeIcon = 24.0;
}
