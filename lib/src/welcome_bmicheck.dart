// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:async';
import 'gender_bmicheck.dart'; 

class Welcome extends StatefulWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => GenderType(),
          )),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Spacer(),
                Text(
                  'BMICheck',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3c8B46), fontFamily: 'Stikco', letterSpacing: 2),
                  textAlign: TextAlign.center,
                  
                ),
                Spacer(),
              ]),
        ),
      );
      }
}