import 'package:flutter/material.dart';
import 'screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cretu Claudia - Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF632324),
          primary: const Color(0xFF632324),
          secondary: const Color(0xFFF5DEB3),
        ),
        fontFamily: 'Roboto',
      ),
      home: const FirstScreen(),
    );
  }
}
