import 'package:flutter/material.dart';

final ThemeData dayTheme = ThemeData(
  primarySwatch: Colors.blue, // Set the primary color to blue
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue, // Set primary color to blue
  ).copyWith(
    background: const Color.fromARGB(
        255, 42, 62, 188), // Set the background color to green
  ),
);
