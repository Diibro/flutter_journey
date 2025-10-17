import 'package:flutter/material.dart';
import 'package:my_journey/navigation/main_navigation.dart';
import 'package:my_journey/providers/counter_provider.dart';
import 'package:my_journey/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CounterProvider())
        ],
       child: const MainApp()
      )
    );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My Flutter Journey',
    theme: AppTheme.lightTheme,
    home: const MainNavigation(),

   );
  }
}
