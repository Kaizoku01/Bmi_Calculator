import 'package:bmi_calcy/Components/constants.dart';
import 'package:flutter/material.dart';

class Gendericon extends StatelessWidget {
  final IconData? icon;
  final String? label;

  Gendericon({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label!,
          style: kLabeltextstyle,
        ),
      ],
    );
  }
}
