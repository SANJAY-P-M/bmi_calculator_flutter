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
        //Thinks now my Theme is better
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0a0e21),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 92,
        ),
        // colorScheme: ColorScheme.,
        scaffoldBackgroundColor: Color(0xFF0a0e21),
      ),
    );
  }
}
