import 'package:flutter/material.dart';

import 'package:one_button/screens/home_screen.dart';
import 'package:one_button/screens/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      routes: {
        WelcomeScreen.routeName: (ctx) => const WelcomeScreen(),
      },
    );
  }
}
