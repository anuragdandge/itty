import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:itty/pages/home.dart';
import 'package:itty/pages/login.dart';
import 'package:itty/pages/notes.dart';
import 'package:itty/pages/links.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller = PageController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Splash(),
        nextScreen: Scaffold(
          body: Container(
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: const [Home(), Login(), Notes(), Links()],
            ),
          ),
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: _selectedIndex,
            onItemSelected: (index) {
              setState(() {
                _selectedIndex = index;
                _controller.animateToPage(index,
                    duration: Duration(milliseconds: 300), curve: Curves.ease);
              });
            },
            items: [
              BottomNavyBarItem(
                  icon: Icon(Icons.apps),
                  title: Text("Home"),
                  activeColor: Colors.red),
              BottomNavyBarItem(
                  icon: Icon(Icons.people),
                  title: Text("Users"),
                  activeColor: Colors.purpleAccent),
              BottomNavyBarItem(
                  icon: Icon(Icons.message),
                  title: Text("Message"),
                  activeColor: Colors.pink),
              BottomNavyBarItem(
                  icon: Icon(Icons.settings),
                  title: Text("Settings"),
                  activeColor: Colors.purpleAccent),
            ],
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }

  _buildPage({IconData? icon, String? title, Color? color}) {
    return Container(
      color: color,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 200,
              color: Colors.white,
            ),
            Text(
              title!,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
