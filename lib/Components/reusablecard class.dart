import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? colours;
  final Widget? cardchild;
  final VoidCallback? onpress;

  ReusableCard({this.colours, this.cardchild, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colours,
        ),
      ),
    );
  }
}
