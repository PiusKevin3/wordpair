import 'package:flutter/material.dart';
import 'package:wordpair/pages/first_page.dart';
import 'package:wordpair/pages/home_page.dart';
import 'package:wordpair/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void userTapped(){
      print("User tapped");

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //theme: ThemeData(primaryColor: Colors.purple),
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          '/firstpage':(context)=>FirstPage(),
          '/homepage':(context)=>HomePage(),
          '/settingspage':(context)=>SettingsPage(),
          
        },
        );
  }
}
