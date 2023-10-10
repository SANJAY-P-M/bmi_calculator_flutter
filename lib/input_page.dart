import 'package:bmi_calculator/bmi_logic.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/modified_container.dart';
import 'gender_enum.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  BMILogic brain =
      BMILogic(height: 10, age: 20, gender: Gender.male, weight: 70);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 26),
          child: Column(
            children: [
              // First Row
              Expanded(
                child: Row(
                  children: [
                    // Male
                    ModifiedContainer(
                      color: brain.gender == Gender.male
                          ? Color(0xFF1D1F33)
                          : Color(0xFF0a0e21),
                      child: Column(
                        children: [
                          Icon(Icons.male),
                          Text("MALE"),
                        ],
                      ),
                      // Instead using bool values we can use enums
                      onPress: () {
                        setState(() {
                          brain.gender = Gender.male;
                        });
                      },
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    // Female
                    ModifiedContainer(
                      color: brain.gender == Gender.female
                          ? Color(0xFF1D1F33)
                          : Color(0xFF0a0e21),
                      child: Column(
                        children: [
                          Icon(Icons.female),
                          Text("FEMALE"),
                        ],
                      ),
                      onPress: () {
                        setState(() {
                          brain.gender = Gender.female;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              // Second Row
              // Height
              Expanded(
                child: Row(
                  children: [
                    ModifiedContainer(
                      child: Column(
                        children: [
                          Text(
                            "HEIGHT",
                          ),
                          Slider(
                              value: 0.0,
                              onChanged: (value) {
                                // setState(() {
                                //   brain.height = value as int;
                                // });
                              }),
                          Text(
                            brain.height.toString(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              // Third row
              Expanded(
                child: Row(
                  children: [
                    ModifiedContainer(
                      onPress: () {},
                      child: Column(
                        children: [
                          Text(
                            "WEIGHT",
                          ),
                          Text(
                            "74",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ModifiedContainer(
                      onPress: () {},
                      child: Column(
                        children: [
                          Text(
                            "AGE",
                          ),
                          Text(
                            "20",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
