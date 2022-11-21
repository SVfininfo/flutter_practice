import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/profile.dart';
import 'badge_widget.dart';
import 'forms.dart';
import 'list_page.dart';
import 'multichild_layouts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset("assets/images/epos.jpg"),
        // splash: Icons.directions_bike_rounded,
        nextScreen: const ProfileScreen(),
        splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white,

    // pageTransitionType: PageTransitionType.scale,
        // Image.asset(name),

      ),
    );
  }
}

