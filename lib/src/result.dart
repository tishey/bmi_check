// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../util/costants.dart';
import '../widget/bottombutton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key, required this.getComment, required this.getResult, required this.calculateBmi}) : super(key: key);

  final String getComment;
  final String getResult;
  final String calculateBmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Result'),
          centerTitle: true,
        ),
        
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Your Result',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
                SizedBox(height: 40),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                  Spacer(),
                    Text(
                      getResult,
                      textAlign: TextAlign.center,
                      style: titleTextStyle,
                    ),
                   
                    Text(calculateBmi.toString(),
                        textAlign: TextAlign.center, style: resultTextStyle),
                        SizedBox(height: 40),
                    Text(
                    getComment,
                    textAlign: TextAlign.center,
                        style: labelTextStyle),
                        Spacer(),
                    BottomButton(
                      bottomLabel: 'RE-CALCUATE',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
