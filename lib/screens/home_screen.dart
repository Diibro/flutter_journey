import 'package:flutter/material.dart';
import 'package:my_journey/widgets/custom_button.dart';
import 'package:my_journey/widgets/header.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Home')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Header(title: "My Flutter Journey 👋"),
            const SizedBox(height: 30,),
            CustomButton(
              text: "Go to Profile",
              color: Colors.blueAccent,
              onPressed: () => Navigator.pushNamed(context, '/profile')
            ),
            const SizedBox(height: 30,),
            CustomButton(
              text: "Go to Settings",
              color: Colors.green,
              onPressed: () => Navigator.pushNamed(context, '/settings')
            )
          ],
          ),
        ),
    );
  }
}