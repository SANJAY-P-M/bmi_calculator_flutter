import 'package:flutter/material.dart';

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

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 26),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                      color: Theme.of(context).colorScheme.secondary,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: IconTheme.of(context).color,
                          ),
                          Text(
                            "MALE",
                            style: Theme.of(context).textTheme.displayMedium,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                      color: Theme.of(context).colorScheme.secondary,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: IconTheme.of(context).color,
                          ),
                          Text(
                            "FEMALE",
                            style: Theme.of(context).textTheme.displayMedium,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Theme.of(context).colorScheme.secondary,
                child: Column(
                  children: [
                    Text(
                      "HEIGHT",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      "183",
                      style: Theme.of(context).textTheme.displayLarge,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
