import 'package:bmi_calculator/bmi_logic.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/modified_container.dart';
import 'package:bmi_calculator/gender_card.dart';

import 'gender_enum.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  BMILogic brain = BMILogic();
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
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
                    ModifiedContainer(
                      child: GenderCard(
                        isActive: isMaleSelected,
                        icon: Icons.male,
                        gender: 'MALE',
                      ),
                      // Instead using bool values we can use enums
                      onPress: () {
                        brain.setMale(Gender.male);
                        setState(() {
                          isMaleSelected = true;
                          isFemaleSelected = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ModifiedContainer(
                      child: GenderCard(
                        isActive: isFemaleSelected,
                        icon: Icons.female,
                        gender: 'FEMALE',
                      ),
                      onPress: () {
                        brain.setMale(Gender.female);
                        setState(() {
                          isMaleSelected = false;
                          isFemaleSelected = true;
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
              Expanded(
                child: Row(
                  children: [
                    ModifiedContainer(
                      onPress: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "HEIGHT",
                          ),
                          Text(
                            "183",
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
