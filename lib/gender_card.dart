import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String gender;
  final bool isActive;
  GenderCard(
      {required this.icon, required this.gender, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          color: isActive ? IconTheme.of(context).color : Color(0xFF8D8E98),
        ),
        Text(
          this.gender,
          style: isActive
              ? Theme.of(context).textTheme.bodyMedium
              : Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Color(0xFF8D8E98),
                  ),
        )
      ],
    );
  }
}
