import 'package:flutter/material.dart';

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
                              color: IconTheme.of(context).color,
                            ),
                            Text(
                              "MALE",
                              style: Theme.of(context).textTheme.displayMedium,
                            )
                          ],
                        ),
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: Row(
                    children: [
                      ModifiedContainer(
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
                Expanded(
                  child: Row(
                    children: [
                      ModifiedContainer(
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
            )),
      ),
    );
  }
}

//Defining a new stateless widget to make the code reusable
class ModifiedContainer extends StatelessWidget {
  final Widget child;

  ModifiedContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        color: Theme.of(context).colorScheme.secondary,
        child: child,
      ),
    );
  }
}
