import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trainingp/constants.dart';
import 'package:trainingp/screens/registration_screen.dart';

import 'login_screen.dart';

class SplashScreen  extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration = Duration(seconds: 5);
    return new Timer (duration, registerRoute);
  }

  registerRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginScreen()
    ));
  }
  
  
  
  
  Widget build(BuildContext context) =>  initWidget();

  Widget initWidget() {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDFD),

      body:
      Padding(
       padding: const EdgeInsets.all(0.0),
        child: Container(

          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Logo),
                  fit: BoxFit.fitHeight),
          ),






          // child: Center(
          //   child: const Text(
          //       'Welcome !',
          //       style: TextStyle(
          //         fontSize: 30.0,
          //         fontWeight: FontWeight.bold,
          //         // headline6 is used for setting title's theme
          //         color: Colors.amber,
          //         // fontSize: 24,
          //       )
          //   ),
          // ),


        ),
      ),
    );

  }
  }


