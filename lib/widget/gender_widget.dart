import '../src/calculate_bmicheck.dart';
import 'package:flutter/material.dart';
import '../util/costants.dart';
import '../util/brainfactory.dart';




class Gender extends StatefulWidget {
  const Gender({ Key? key }) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

enum GenderCard { male, female }

class _GenderState extends State<Gender> {
   Color maleCardColour = inactiveColor;
  Color femaleCardColour = inactiveColor;

  void activeColour(GenderCard gender){
      if(gender == GenderCard.male){
        if(maleCardColour == inactiveColor){
          maleCardColour = grColor1;
          femaleCardColour = inactiveColor;
        } else {
          maleCardColour = inactiveColor;
        }
      } if (gender == GenderCard.female) {
        if(femaleCardColour == inactiveColor) {
          femaleCardColour = grColor1;
          maleCardColour = inactiveColor;
        }else {
          femaleCardColour = inactiveColor;
        }
      }
    }

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        activeColour(GenderCard.male);
                        
                      });
                    },
                    child: NewCon(
                      myheight: 75,
                      mywidth: 90,
                      mytext: 'Male',
                      myColour: maleCardColour,
                    ), ), ),
                     Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        activeColour(GenderCard.female);
                      });
                    },
                    child: NewCon(
                      myheight: 75,
                      mywidth: 90,
                      mytext: 'Female',
                      myColour: femaleCardColour,
                    ), ), ),
              ],
            );
  }
}