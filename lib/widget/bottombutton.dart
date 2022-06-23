import 'package:flutter/material.dart';
import '../util/costants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.bottomLabel});
  final VoidCallback onTap;
  final String bottomLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.all(20),
            height: 60,
            width: 600,
           child:Center(child: Text(bottomLabel, style: labelTextStyle)),
           decoration: BoxDecoration(
            gradient: activeColor,
            borderRadius: BorderRadius.circular(30)
           )
          ),
        );
  }
}
