import 'package:flutter/material.dart';
import 'package:my_journey/screens/home_screen.dart';
import 'package:my_journey/screens/profile_screen.dart';
import 'package:my_journey/screens/settings_screen.dart';
import 'package:my_journey/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My Flutter Journey',
    theme: AppTheme.lightTheme,
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeScreen(),
      '/profile': (context) => const ProfileScreen(),
      '/settings': (context) => const SettingsScreen()
    },

   );
  }
}
