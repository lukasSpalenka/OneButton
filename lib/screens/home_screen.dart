import 'package:flutter/material.dart';
import 'package:one_button/screens/welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 350,
              ),
            ),
            const SizedBox(height: 150),
            SizedBox(
              height: 100,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    WelcomeScreen.routeName,
                  );
                },
                child: const Text(
                  'Stiskněte',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
