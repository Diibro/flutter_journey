import 'package:flutter/material.dart';
import 'package:my_journey/providers/counter_provider.dart';
import 'package:my_journey/screens/home_screen.dart';
import 'package:my_journey/screens/profile_screen.dart';
import 'package:my_journey/screens/settings_screen.dart';
import 'package:provider/provider.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();

}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;
  // int _count = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // void _incrementCount(){
  //   setState(() {
  //     _count++;
  //   });
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(content: Text('FAB Counter clicked $_count times'), duration: const Duration(microseconds: 500),)
  //   );
  // } 

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      body: _screens[_currentIndex],
      floatingActionButton: FloatingActionButton(
          onPressed: counterProvider.increment,
          backgroundColor: Colors.deepPurple,
          child: const Icon(Icons.add, color: Colors.white, ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(Icons.person),
                  if(counterProvider.count > 0)
                    Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                          ),
                          child: Text('${counterProvider.count}', style: TextStyle(color: Colors.white, fontSize: 10),),
                        ),  
                      )

                ],
              ), 
              label: 'Profile'
              ),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ]
        ),
    );
  }

  
}