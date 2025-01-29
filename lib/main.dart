import 'package:customer_screen/customer_screen.dart';
import 'package:customer_screen/intro_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment Design',
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
