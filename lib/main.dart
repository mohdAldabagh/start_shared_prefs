import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //TODO 13: Create insatance of themeData

  //TODO 11: Create lightTheme using ThemeData class

  //TODO 12: Create darkTheme using ThemeData class

  //TODO 15: Create a method to load the theme

  //TODO 17: Create a method to change the Theme

  //TODO 16: Call the initState method

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //TODO 14: Chanage theme properity with the instance

      theme: ThemeData.light(),
      //TODO 22: modify the Home Screen
      home: HomeScreen(),
    );
  }
}
