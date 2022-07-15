import 'package:flutter/material.dart';
import 'package:trainingp/constants.dart';
import 'package:trainingp/screens/resto_screen..dart';

import 'splash_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}



class InitState extends State<RegistrationScreen> {
  final _registerFormKey = GlobalKey<FormState>();

  bool isLoading = false;
  bool registerError = false;
  bool registeredSuccessfully = false;


  bool obscurePassword = true;

  bool isHiddenPassword = true;


  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  Widget initWidget(){
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDFD),

      // appBar: AppBar(
      //   elevation: 0,
      //   toolbarHeight: 150,
      //   backgroundColor: const Color(0xFFF7F7F7),
      //   title: Text(
      //     'Sign up',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 30,
      //       height: 5,
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.all(20.0),

        child: Column(
          children:<Widget>[

            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  "Sign UP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    height: 5,
                    color: Colors.black,),
                ),
              ),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                suffixIcon: InkWell(
                  //onTap: _togglePasswordView,
                  child:Icon
                    (Icons.check,
                    size: 25,) ,
                ),
                border: UnderlineInputBorder(),
                labelText: 'Enter your username',
              ),
            ),
          ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: InkWell(
                    //onTap: _togglePasswordView,
                    child:Icon
                      (Icons.check,
                      size: 25,) ,
                  ),
                  border: UnderlineInputBorder(),
                  labelText: 'Enter yourEmail',
                ),
              ),
            ),
            SizedBox(height: 15.0),
            TextField(
              obscureText: isHiddenPassword ,
              decoration: InputDecoration(
                labelText: 'PASSWORD',
                // hintText: 'Password',
                suffixIcon: InkWell(
                  onTap: _togglePasswordView,
                  child:Icon
                    (Icons.visibility,) ,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            SizedBox(
              width: 450,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.10)),
                    primary: orangeColor,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                onPressed: (){ Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            RestoScreen()));
                },

                child: Center(

                  // Text('Create Account'),
                  child: const Text('SIGN IN',
                    style: TextStyle(
                      color: Colors.black,

                    ),
                  ),
                ),
              ),
            ),
    ]
        ),
      ),
    );
  }
  void _togglePasswordView (){
    // if (isHiddenPassword == true){
    //   isHiddenPassword = false;
    // }
    // else{
    //   isHiddenPassword = true;
    // }

    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
