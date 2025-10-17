import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
    useMaterial3: true,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
    )
  );
}