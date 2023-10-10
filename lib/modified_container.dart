import 'package:flutter/material.dart';
import 'colors_const.dart';

//Converted to a StatefulWidget so that change in background color can be efficient
//Defining a new stateless widget to make the code reusable
class ModifiedContainer extends StatelessWidget {
  final List<Widget> children;
  final void Function()? onPress;
  final Color color;
  ModifiedContainer(
      {required this.children, this.onPress, this.color = kSecondaryColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}
