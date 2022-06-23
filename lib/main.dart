// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'src/welcome_bmicheck.dart';
// import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const BMIcalculator());
}



class BMIcalculator extends StatefulWidget {
  const BMIcalculator({Key? key}) : super(key: key);

  @override
  State<BMIcalculator> createState() => _BMIcalculatorState();
}

class _BMIcalculatorState extends State<BMIcalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF383838),
        scaffoldBackgroundColor: Color(0xFF383838),
      ),
      home: Welcome()
    );
  }
}
