import 'package:bmi_calculator/bmi_logic.dart';
import 'package:bmi_calculator/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/modified_container.dart';
import 'gender_enum.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  BMILogic brain =
      BMILogic(height: 10.0, age: 20, gender: Gender.male, weight: 70);

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
                          ? kSecondaryColor
                          : kPrimaryColor,
                      children: [
                        Icon(
                          Icons.male,
                          color: brain.gender == Gender.male
                              ? Colors.white
                              : kUnfocusedColor,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(
                            color: brain.gender == Gender.male
                                ? Colors.white
                                : kUnfocusedColor,
                          ),
                        ),
                      ],
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
                          ? kSecondaryColor
                          : kPrimaryColor,
                      children: [
                        Icon(
                          Icons.female,
                          color: brain.gender == Gender.female
                              ? Colors.white
                              : kUnfocusedColor,
                        ),
                        Text(
                          "FEMALE",
                          style: TextStyle(
                            color: brain.gender == Gender.female
                                ? Colors.white
                                : kUnfocusedColor,
                          ),
                        ),
                      ],
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
                      children: [
                        Text(
                          "HEIGHT",
                        ),
                        Slider(
                          activeColor: Colors.white,
                          inactiveColor: kPrimaryColor,
                          value: brain.height,
                          onChanged: (double height) {
                            setState(() {
                              brain.height = height;
                            });
                          },
                          max: 270.0,
                        ),
                        Text(
                          brain.height.toStringAsFixed(2),
                        ),
                      ],
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
                      children: [
                        Text(
                          "WEIGHT",
                        ),
                        Text(
                          "74",
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ModifiedContainer(
                      onPress: () {},
                      children: [
                        Text(
                          "AGE",
                        ),
                        Text(
                          "20",
                        ),
                      ],
                    ),
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
