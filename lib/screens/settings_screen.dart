
import 'package:flutter/material.dart';
import 'package:my_journey/widgets/header.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const isDarkMode = false;

    return Scaffold(
      appBar: AppBar(title: Text('Settings'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Header(title: 'Settings'),
            SwitchListTile(title: Text('Dark Mode'),value: isDarkMode, onChanged: (value){}),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: Text('Back'))

          ],
        ),
      )
    );  
  }
}