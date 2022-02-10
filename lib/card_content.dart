import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  CardContent({required this.icon, required this.label});
  late final IconData icon;
  late final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
