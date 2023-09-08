import 'package:flutter/material.dart';

//Converted to a StatefulWidget so that change in background color can be efficient
//Defining a new stateless widget to make the code reusable
class ModifiedContainer extends StatelessWidget {
  final Widget child;
  final void Function()? onPress;
  final Color color;
  ModifiedContainer(
      {required this.child,
      this.onPress,
      this.color = const Color(0xFF1D1F33)});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          color: color,
          child: child,
        ),
      ),
    );
  }
}
