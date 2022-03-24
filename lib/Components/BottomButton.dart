import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, this.buttonTitle});

  final VoidCallback? onTap;
  final String? buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle!,
            style: kbottombuttonstyle,
          ),
        ),
        color: kBottomcontainercolor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomcontainerwidth,
      ),
    );
  }
}
