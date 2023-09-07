import 'package:bmi_calculator/bmi_logic.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/modified_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  BMILogic brain = BMILogic();
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          Text(
                            "MALE",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.color),
                          )
                        ],
                      ),
                      onPress: () {
                        brain.setMale(true);
                      },
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ModifiedContainer(
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
                      onPress: () {
                        brain.setMale(false);
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
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          Text(
                            "183",
                            style: Theme.of(context).textTheme.displayLarge,
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
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          Text(
                            "74",
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    ModifiedContainer(
                        onPress: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Text(
                              "20",
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ],
                        ))
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
