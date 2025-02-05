import 'package:flutter/material.dart';
import 'package:my_site/screens/main_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MainScreen(),
      ),
    );
  }
}
