import 'package:flutter/material.dart';
import 'package:wordpair/pages/home_page.dart';
import 'package:wordpair/pages/profile_page.dart';
import 'package:wordpair/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
//this keeps track of current page to display
  int _selectedIndex = 0;

//this method updates the selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//list of pages in our app
  final List _pages = [
    //homepage
    HomePage(),

    //profilepage
    ProfilePage(),

    //settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          //profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

          //settings
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
