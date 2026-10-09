import 'package:flutter/material.dart';
import 'home_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Module 7 Assingment',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(

      ),
    );
  }
}
