import 'package:flutter/material.dart';
import 'package:my_journey/widgets/header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text('Profile'),),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Header(title: "My Profile"),
            const Text("Software Engineer", style: TextStyle(fontSize: 18),),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Back"))
          ],
        ),
        ),
     );
  } 
}