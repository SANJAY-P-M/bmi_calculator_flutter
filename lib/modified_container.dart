import 'package:flutter/material.dart';

//Converted to a StatefulWidget so that change in background color can be efficient
//Defining a new stateless widget to make the code reusable
class ModifiedContainer extends StatelessWidget {
  final Widget child;
  final Function() onPress;
  final bool selected;
  ModifiedContainer(
      {required this.child, required this.onPress, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          color: Theme.of(context).colorScheme.secondary,
          child: child,
        ),
      ),
    );
  }
}
