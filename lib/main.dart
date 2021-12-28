import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:itty/pages/home.dart';
import 'package:itty/pages/login.dart';
import 'package:itty/pages/notes.dart';
import 'package:itty/pages/links.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'pages/splash.dart';

Future main() async {

  
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
      splash: Icons.home,
      nextScreen: const Home(),
      duration: 700,
    ));
  }
}
