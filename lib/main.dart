import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      // Learning ThemeData class
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF0a0e21),
          primary: Color(0xFF0a0e21),
          secondary: Color(0xFF1D1F33),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 100,
        ),
        textTheme: TextTheme(
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: TextStyle(
            color: Color(0xFF60626F),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
        ),
        scaffoldBackgroundColor: Color(0xFF0a0e21),
      ),
    );
  }
}
