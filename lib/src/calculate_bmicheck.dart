// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import '../util/costants.dart';
import '../widget/gender_widget.dart';
import 'result.dart';
import 'package:flutter/material.dart';
import '../widget/bottombutton.dart';
import '../util/brainfactory.dart';

// final Decoration activeButton =  BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [Color(0xFF3C8B46), Color(0xFF00A580)],
//                           begin: Alignment.centerLeft,
//                           end: Alignment.centerRight),
//                       borderRadius: BorderRadius.circular(25),
//                     );
// final Decoration inActiveButton = BoxDecoration(color: Color(0xFF383838),);

enum GenderCard { male, female }

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  Color maleCardColour = inactiveColor;
  Color femaleCardColour = inactiveColor;



  String? getComment;
  String? getResult;
  String? calculateBmi;

  int height = 30;
  int wheight = 40;
  int _counter = 20;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter <= 0) {
        return;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMICHECK'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 20, left: 30),
              child: Text(
                'Selected Gender',
                style: TextStyle(
                  fontSize: 15,
                ),
              )),
          Gender(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: _incrementCounter,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent.withOpacity(0.08),
                  maxRadius: 30,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
              Container(
                  child: Text(
                '$_counter',
                style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
              )),
              GestureDetector(
                onTap: _decrementCounter,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent.withOpacity(0.08),
                  maxRadius: 30,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text('Height in centemer(cm)'),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
            child: Slider(
              value: height.toDouble(),
              min: 0,
              max: 100,
              activeColor: grColor1,
              label: height.round().toString(),
              divisions: 100,
              onChanged: (double newValue) {
                setState(() {
                  height = newValue.round();
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text('Weight in kilograms(kg)'),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
            child: Slider(
              value: wheight.toDouble(),
              min: 0,
              max: 100,
              activeColor: grColor1,
              label: height.round().toString(),
              divisions: 100,
              onChanged: (double newValue) {
                setState(() {
                  wheight = newValue.round();
                });
              },
            ),
          ),
          Spacer(),
          BottomButton(
              bottomLabel: 'Calculate your BMI',
              onTap: () {
                BrainResult calc = BrainResult(height: height, weight: wheight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                            getComment: calc.getComment(),
                            getResult: calc.getResult(),
                            calculateBmi: calc.calculateBmi(),),),);
              })
        ],
      ),
    );
  }
}

//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(20),
//                 height: myheight,
//                 width: mywidth,
//                 child: Center(child: Text('Male', style: TextStyle(fontSize: 15),  textAlign: TextAlign.center,)),
//                 decoration: BoxDecoration(
//       gradient: myColour,
//       borderRadius: BorderRadius.circular(25),
//     )
//               );
//   }
// }

class NewCon extends StatelessWidget {
  NewCon({Key? key, this.myheight, this.mywidth, this.mytext, this.myColour})
      : super(key: key);

  final double? myheight;
  final double? mywidth;
  String? mytext;
  final Color? myColour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: myheight,
      width: mywidth,
      decoration: BoxDecoration(
        color: myColour,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(mytext.toString(),
            style: labelTextStyle, textAlign: TextAlign.center),
      ),
    );
  }
}
