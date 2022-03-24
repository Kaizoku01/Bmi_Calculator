import 'package:flutter/material.dart';
import 'package:bmi_calcy/Components/constants.dart';
import '../Components/reusablecard class.dart';
import 'package:bmi_calcy/Components/BottomButton.dart';

class Resultspage extends StatelessWidget {
  Resultspage(
      {@required this.BMIresult,
      @required this.healthstat,
      @required this.healthtip});

  final String? BMIresult;
  final String? healthstat;
  final String? healthtip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kresultpagehead,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colours: kActivecardcolour,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    healthstat!,
                    style: kresultpagetext,
                  ),
                  Text(
                    BMIresult!,
                    style: kbmiresult,
                  ),
                  Text(
                    healthtip!,
                    style: kresultbodytext,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
